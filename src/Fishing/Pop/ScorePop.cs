using System;
using System.Text.RegularExpressions;
using Godot;

namespace AntiIdle.Fishing;

public enum PopType : int
{
    Miss,
    Catch,
    Perfect,
    Guardian,
}

public partial class ScorePop : SceneData
{
    private Control node;

    // MATCH: DefineSprite_7732-frame_1-PlaceObject2_7731_11-CLIPACTIONRECORD onClipEvent(load).as
    public override void _Ready()
    {
        node = GetNode<Control>("Miss");
        Modulate = Modulate with { A = 1 };
    }

    // MATCH: DefineSprite_7732-frame_1-PlaceObject2_7731_11-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        if (Modulate.A > 0)
            Modulate = Modulate with { A = Modulate.A - (float)delta };
    }

    public void Show(PopType pop)
    {
        node.Visible = false;
        node = GetNode<Control>(
            pop switch
            {
                PopType.Miss => "Miss",
                PopType.Catch => "Catch",
                PopType.Perfect => "Perfect",
                PopType.Guardian => "Guardian",
                _ => throw new NotImplementedException(),
            }
        );
        node.Visible = true;
        Modulate = Modulate with { A = 1 };
    }
}
