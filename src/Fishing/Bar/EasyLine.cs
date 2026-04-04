using System;
using Godot;
using Math = AntiIdle.Common.Flash.Math;

public partial class EasyLine : Line2D
{
    // MATCH: DefineSprite_7718-frame_1-PlaceObject2_7717_2-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        var easyStreak = 3 + Math.floor(_root.save.fishLevel / 3);
        if (_root.save.fishRod == 4)
            easyStreak = 0;
        if (easyStreak > 20)
            easyStreak = 20;
        if (_root.save.fishStreak <= easyStreak || _root.fishStatus == 3)
            Modulate = Modulate with { A = 1 };
        else
            Modulate = Modulate with { A = 0 };
    }
}
