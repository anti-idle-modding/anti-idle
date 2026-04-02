using System;
using AntiIdle.Common;
using Godot;

public partial class Cursor : Control
{
    [Export]
    Control fishTriangle;

    private double actualX;
    private double targetX;

    // MATCH: DefineSprite_7732-frame_1-PlaceObject2_7718_4-CLIPACTIONRECORD onClipEvent(load).as
    public override void _EnterTree()
    {
        actualX = 90;
    }

    // MATCH: DefineSprite_7732-frame_1-PlaceObject2_7718_4-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        targetX = _root.fishDest - 10;
        actualX += (targetX - actualX) / 2 * Const.Slowdown(delta);
        Position = Position with { X = (float)actualX };
        if (_root.save.fishRod == 4 || _root.save.fishStreak >= 250)
        {
            Modulate = Modulate with { A = 1 - fishTriangle.Modulate.A };
        }
        else
        {
            Modulate = Modulate with { A = 1 };
        }
    }
}
