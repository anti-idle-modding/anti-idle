using System;
using Godot;

public partial class FishingStickman : Control
{
    // MATCH: DefineSprite_7711-frame_1-PlaceObject2_7680_3-CLIPACTIONRECORD onClipEvent(enterFrame).as

    private Control node;

    void Show(string id)
    {
        if (node != null && node.Name == id)
            return;
        if (node != null)
            node.Visible = false;
        node = GetNode<Control>(id);
        node.Visible = true;

        if (id != "3")
        {
            var anim = node.GetNode<AnimationPlayer>("AnimationPlayer");
            anim.Seek(0);
            anim.Play();
        }
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
