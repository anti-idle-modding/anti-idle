using System;
using AntiIdle.Common;
using Godot;
using Math = AntiIdle.Common.Flash.Math;

namespace AntiIdle.Fishing.Bar;

public partial class Triangle : Control
{
    private double tolerance;
    private double gcMult;
    private string tempName;
    private double chance;
    private double expToGain;

    // MATCH: DefineSprite_7732-frame_1-PlaceObject3_7720_9-CLIPACTIONRECORD onClipEvent(load).as
    public override void _EnterTree()
    {
        Modulate = Modulate with { A = 0 };
        tolerance = 0;
    }

    public override void _Process(double delta)
    {
        gcMult = 1;
        if (_root.save.permaBanPenalty[35] == 3)
        {
            gcMult = 6;
        }
        else if (_root.save.permaBanPenalty[35] == 2)
        {
            gcMult = 4;
        }
        else if (_root.save.permaBanPenalty[35] == 1)
        {
            gcMult = 3;
        }

        if (_root.fishCate == "Fish" || _root.fishCate == "Junk")
        {
            tempName = "Lv. " + _root.fishLev + " " + _root.fishCate;
        }
        else if (_root.fishLev == "")
        {
            tempName = _root.fishCate;
        }
        else
        {
            tempName = _root.fishLev + " " + _root.fishCate;
        }

        if (_root.fishLoc < 100)
        {
            Modulate = Modulate with { A = (float)((_root.fishLoc * 2) / 100) };
        }
        else
        {
            Modulate = Modulate with { A = (float)((200 - _root.fishLoc) * 2) };
        }

        if (Modulate.A > 1)
        {
            Modulate = Modulate with { A = 1 };
        }

        _root.fishLoc += _root.fishSpeed * delta;
        Position = Position with { X = (float)_root.fishLoc };
        if (_root.fishLoc > 150 && _root.fishSpeed > 0 || _root.fishLoc < 50 && _root.fishSpeed < 0)
        {
            _root.playerLoc = _root.fishLoc;
            chance =
                30
                + (
                    _root.save.fishLevel
                    - Convert.ToDouble(_root.fishArray[_root.fishCurrent].fishLevel)
                ) * 3;
            if (_root.save.careerLevel[12] >= 100)
            {
                chance += 10;
            }

            if (_root.save.fishRod == 7)
            {
                chance += 20;
            }

            if (_root.save.permaBanPenalty[16] == 3)
            {
                chance += 25;
            }
            else if (_root.save.permaBanPenalty[16] == 2)
            {
                chance += 15;
            }
            else if (_root.save.permaBanPenalty[16] == 1)
            {
                chance += 10;
            }

            if (
                Math.random() < chance / 100
                && _root.fishSpec != "Manual"
                && _root.fishSpec != "Manual+"
            )
            {
                _root.fishStatus = 3;
                _root.save.fishStreak = 0;
                if (_root.save.fishExamLeft > 0)
                {
                    _root.save.fishExamLeft -= 1;
                }

                // TODO
                // _parent.fishScore.gotoAndStop(2);
                // _parent.fishScore._alpha = 100;
                _root.fishLoc = 0;
                _root.fishSpeed = 0;
                _root.save.fishScore += _root.fishCurrentExp * 50;
                _root.save.fishScoreToday += _root.fishCurrentExp * 50;
                _root.save.fishExp += _root.fishCurrentExp;
                _root.gainCareerEXP(12, _root.fishCurrentExp * 3 + _root.save.fishLevel, true);
                _root.gainGreenCoin(2500 * gcMult);
                var i = 1;
                while (i <= _root.todayEvent)
                {
                    var yy = _root.clock_year % 10;
                    var mm = _root.clock_month;
                    var dd = _root.clock_date;
                    if (_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by fishing")
                    {
                        _root.gainEventToken(2);
                    }

                    i++;
                }

                // if (_parent._parent.ready != true) XXX
                if (true)
                {
                    _root.dispNews(
                        118,
                        "Fishing Mastery increased! (+"
                            + _root.withComma(_root.fishCurrentExp)
                            + ")"
                    );
                }

                expToGain = Math.floor(
                    _root.fishAExp * Math.pow(_root.save.level, 0.6) * _root.save.boost / 100 * 0.8
                );
                if (_root.save.permaBanPenalty[6] == 3)
                {
                    expToGain = Math.floor(expToGain * 2);
                }
                else if (_root.save.permaBanPenalty[6] == 2)
                {
                    expToGain = Math.floor(expToGain * 1.6);
                }
                else if (_root.save.permaBanPenalty[6] == 1)
                {
                    expToGain = Math.floor(expToGain * 1.4);
                }

                _root.gainEXP(expToGain);
                _root.dispNews(116, tempName + " GET! (+" + _root.withComma(expToGain) + " EXP)");
                if (_root.save.fishLevel > 30)
                {
                    if (_root.save.fishLevel > 50)
                    {
                        expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.03 - 0.3));
                    }
                    else
                    {
                        expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.05 - 1.3));
                    }

                    _root.gainEXP(expToGain);
                    _root.dispNews(
                        162,
                        "Bonus LEGEND EXP gained! (+" + _root.withComma(expToGain) + " EXP)"
                    );
                }

                _root.gainCyborgPoint(1);
                _root.save.fishTotal += 1;
                _root.save.fishFound[_root.fishCurrent] += 1;
                _root.save.fishLeft[_root.fishCurrent] += 1;
                Fishing.checkCount();
                if (_root.save.fishRod == 7)
                {
                    _root.save.fishFatigue += Math.floor(_root.fishFatigue * 0.75);
                }
                else
                {
                    _root.save.fishFatigue += _root.fishFatigue;
                }
            }
            else
            {
                _root.fishStatus = 1;
                _root.save.fishStreak = 0;
                if (_root.save.fishExamLeft > 0)
                {
                    _root.save.fishExamLeft -= 1;
                }

                // TODO
                // _parent.fishScore.gotoAndStop(1);
                // _parent.fishScore._alpha = 100;
                _root.fishLoc = 0;
                _root.fishSpeed = 0;
                _root.save.fishExp += Math.ceil(_root.fishCurrentExp / 10);
                // if (_parent._parent.ready != true)
                if (true)
                {
                    _root.dispNews(
                        118,
                        "Fishing Mastery increased! (+"
                            + _root.withComma(Math.ceil(_root.fishCurrentExp / 10))
                            + ")"
                    );
                }

                expToGain = Math.floor(
                    _root.fishAExp * Math.pow(_root.save.level, 0.6) * _root.save.boost / 100 * 0.1
                );
                _root.gainEXP(expToGain);
                _root.dispNews(115, "Nothing GET! (+" + _root.withComma(expToGain) + " EXP)");
                _root.save.fishFatigue += Math.floor(_root.fishFatigue / 10);
            }
        }
    }
}
