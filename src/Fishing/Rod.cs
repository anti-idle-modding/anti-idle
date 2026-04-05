using System;
using Godot;

public partial class Rod : Control
{
    private Line2D node;

    void Show(double id)
    {
        if (node != null)
            node.Visible = false;
        node = GetNode<Line2D>(id.ToString());
        node.Visible = true;
    }

    // MATCH: DefineSprite_7577-frame_1-DoAction.as
    // MATCH: DefineSprite_7589-frame_1-DoAction.as
    // MATCH: DefineSprite_7678-frame_1-DoAction.as
    public void OnVisibilityChanged()
    {
        if (!Visible)
            return;
        Show(_root.save.fishRod);
    }
}
