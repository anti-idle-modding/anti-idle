using System;
using AntiIdle.Common;
using Godot;

public partial class MasteryBar : Polygon2D
{
    private double reqExp;
    private double targetScale;

    // MATCH: DefineSprite_7870-frame_1-PlaceObject2_7752_28-CLIPACTIONRECORD onClipEvent(load).as

    public override void _Ready()
    {
        Scale = Scale with { X = 0 };
    }

    // MATCH: DefineSprite_7870-frame_1-PlaceObject2_7752_28-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        reqExp = 200 * _root.save.fishLevel * _root.save.fishLevel + 800 * _root.save.fishLevel;
        if (_root.save.fishLevel >= 30)
        {
            reqExp = 50000 + (_root.save.fishLevel - 30) * 10000;
        }
        if (_root.save.fishLevel >= 50)
        {
            reqExp = 9999999;
        }
        targetScale = _root.save.fishExp / reqExp;
        if (_root.save.fishLevel >= 50)
        {
            targetScale = 1;
        }
        if (_root.save.fishLevel >= 30 && _root.save.fishLevel < 50)
        {
            if (_root.save.fishExp >= reqExp)
            {
                _root.save.fishExp -= reqExp;
                _root.save.fishTotalExp += reqExp;
                _root.save.fishLevel += 1;
                if (_root.save.fishBestLevel < _root.save.fishLevel)
                {
                    _root.save.fishBestLevel = _root.save.fishLevel;
                }
                _root.dispNews(120, "Your Fishing Skill is now " + _root.save.fishLevel + "!");
            }
        }
        // TODO WTF?
        //_parent.reqExp = reqExp;
        if (_root.save.fishExp >= reqExp && _root.save.fishLevel < 30)
        {
            _root.save.fishExp = reqExp;
            // _parent.ready = true; // TODO
        }
        else
        {
            // _parent.ready = false; // TODO
        }
        Scale = Scale with
        {
            X = (float)(Scale.X + (targetScale - Scale.X) * Const.Slowdown(delta) / 5),
        };
        // TODO (?)
        //_parent.expText.text = _root.withComma(_root.save.fishExp) + " / " + _root.withComma(reqExp);
        if (_root.save.fishLevel >= 50)
        {
            // TODO
            //_parent.expText.text = _root.withComma(_root.save.fishExp);
        }
        if (_root.save.fishFatigue < 0)
        {
            _root.save.fishFatigue = 0;
        }
        // TODO
        //_parent.fatigueText.text = _root.withComma(_root.save.fishFatigue) + " / 5,000";
    }
}
