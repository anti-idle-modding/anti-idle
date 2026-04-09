using System;
using AntiIdle.Common;
using Godot;
using Math = AntiIdle.Common.Flash.Math;

public partial class GlowingStar : Control
{
    double defX;
    double defY;

    // MATCH: DefineSprite_1062-frame_1-DoAction.as
    void reset()
    {
        Modulate = Modulate with { A = 1 };
        Position = Position with { X = (float)(defX + (Math.random() - Math.random()) * 5) };
        Position = Position with { Y = (float)(defY + (Math.random() - Math.random()) * 5) };
    }

    public override void _Ready()
    {
        defX = Position.X;
        defY = Position.Y;
        Modulate = Modulate with { A = 0 };
    }

    public override void _Process(double delta)
    {
        if (!Visible)
            return;

        if (Modulate.A > 0)
        {
            RotationDegrees += (float)(5 * Const.Slowdown(delta));
            if (Modulate.A > 0)
                Modulate = Modulate with
                {
                    A = (float)(Modulate.A - (0.02 * Const.Slowdown(delta))),
                };
        }
        else if (Math.random() < 0.005)
        {
            reset();
        }
    }
}
