using System;
using Godot;
using Math = AntiIdle.Common.Flash.Math;

namespace AntiIdle.ButtonMachine;

public partial class RepairButton : Button
{
    [Export]
    private Label repairText;

    private double repairCost;

    // MATCH: DefineSprite_6071-frame_1-PlaceObject2_1602_16-CLIPACTIONRECORD onClipEvent(load).as
    public override void _Ready()
    {
        repairCost = 0;
        Pressed += OnRelease;
    }

    // MATCH: DefineSprite_6071-frame_1-PlaceObject2_1602_16-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        if (!_root.save.buttonBroken)
        {
            repairCost = Math.ceil(Math.sqrt(_root.save.level) * 5000) + 25631;
            Modulate = Modulate with { A = .1f };
        }
        else
        {
            repairCost = Math.ceil(Math.sqrt(_root.save.level) * 500) + 2564;
            Modulate = Modulate with { A = 1 };
        }

        repairCost = Math.floor(repairCost / 25) * 100;
        if (repairCost > 2000000)
            repairCost = 2000000;
        repairText.Text = "-" + _root.withComma(repairCost);
    }

    // MATCH: DefineSprite_6071-frame_1-PlaceObject2_1602_16-CLIPACTIONRECORD on(release).as
    private void OnRelease()
    {
        if (_root.save.coin >= repairCost)
        {
            _root.save.coin -= repairCost;
            if (_root.save.buttonBroken == true)
            {
                _root.save.buttonBroken = false;
                _root.dispNews(73, "Button repaired! (-" + _root.withComma(repairCost) + " Coins)");
                // buttonFull._rotation = Math.random() * 10 - Math.random() * 10; // TODO
            }
            else
            {
                _root.save.immortality += 1;
                _root.buttonLife = 5000;
                _root.dispNews(73, "Button repaired! (-" + _root.withComma(repairCost) + " Coins)");
            }
        }

        //_parent.buttonFull.resetRot(); // TODO
        _root.buttonScore = 0;
    }
}
