using System;
using Godot;

public partial class FishingStickman : Control
{
    // MATCH: DefineSprite_7711-frame_1-PlaceObject2_7680_3-CLIPACTIONRECORD onClipEvent(enterFrame).as

    private Control node;
    private string prev;

    private void Show(string id)
    {
        if (node != null && node.Name == id)
            return;
        if (node != null)
        {
            if (node.Name != "3")
            {
                var anim = node.GetNode<AnimationPlayer>("AnimationPlayer");
                anim.Stop();
            }
            node.Visible = false;
        }
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
        prev = "1";
        Show("1");
    }

    public override void _Process(double delta)
    {
        var id = _root.fishStatus.ToString();
        if (id != prev)
        {
            prev = id;
            Show(id);
        }
    }
}
