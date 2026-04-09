using System;
using Godot;

public partial class Catch : Control
{
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

    // MATCH: DefineSprite_7679-frame_1-PlaceObject2_7667_2-CLIPACTIONRECORD onClipEvent(load).as
    void OnDraw()
    {
        Show(_root.fishCurrent.ToString());
    }
}
