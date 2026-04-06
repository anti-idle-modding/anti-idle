using System;
using System.Text.RegularExpressions;
using Godot;

public partial class StickmanBob : Control
{
    private Control node;
    private double timer = 0;

    private double TICK = 0.5;

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
        timer += delta;
        if (timer >= TICK)
        {
            timer -= TICK;
            Show(
                Convert.ToInt32(node.Name) switch
                {
                    1 => "2",
                    2 => "1",
                    _ => throw new NotImplementedException(),
                }
            );
        }
    }
}
