using System;
using Godot;

namespace AntiIdle.Fishing;

public partial class FishingScore : SceneData
{
    private Node child;

    // MATCH: DefineSprite_7732-frame_1-PlaceObject2_7731_11-CLIPACTIONRECORD onClipEvent(load).as
    public override void _EnterTree()
    {
        Modulate = Modulate with { A = 1 };
    }

    // MATCH: DefineSprite_7732-frame_1-PlaceObject2_7731_11-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        if (Modulate.A > 0)
            Modulate = Modulate with { A = Modulate.A - (float)delta };
        else if (child != null)
            RemoveChild(child);
    }
}
