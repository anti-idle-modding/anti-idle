using System;
using Godot;

public partial class Background : Control
{
    private Sprite2D node;

    void Show(string name)
    {
        if (node != null)
            node.Visible = false;
        node = GetNode<Sprite2D>(name);
        node.Visible = true;
    }

    public override void _Ready()
    {
        Show("DayBg");
    }

    public override void _Process(double delta)
    {
        if (_root.save.fishExamLeft > 0)
        {
            Show("ExamBg");
        }
        else if (_root.save.fishRod == 4)
        {
            Show("CursedBg");
        }
        else
        {
            Show("DayBg");
        }
    }
}
