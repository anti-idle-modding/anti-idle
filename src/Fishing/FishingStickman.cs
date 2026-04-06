using System;
using Godot;

public partial class FishingStickman : Control
{
    // MATCH: DefineSprite_7711-frame_1-PlaceObject2_7680_3-CLIPACTIONRECORD onClipEvent(enterFrame).as

    private Control node;

    void Show(string id)
    {
        if (node != null)
            node.Visible = false;
        node = GetNode<Control>(id);
        node.Visible = true;
    }

    public override void _Ready()
    {
        Show("1");
    }

    public override void _Process(double delta)
    {
        Show(_root.fishStatus.ToString());
    }
}
