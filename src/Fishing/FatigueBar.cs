using System;
using AntiIdle.Common;
using Godot;

public partial class FatigueBar : Polygon2D
{
    // MATCH: DefineSprite_7870-frame_1-PlaceObject2_7752_28-CLIPACTIONRECORD onClipEvent(load).as
    public override void _Ready()
    {
        Scale = Scale with { X = 0 };
    }

    // MATCH: DefineSprite_7870-frame_1-PlaceObject2_7752_28-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        var targetScale = _root.save.fishFatigue / 5000;
        Scale = Scale with
        {
            X = (float)(Scale.X + (targetScale - Scale.X) * Const.Slowdown(delta) / 5),
        };
    }
}
