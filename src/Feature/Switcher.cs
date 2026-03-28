using System;
using Godot;

namespace AntiIdle.Feature;

public partial class Switcher : Button
{
    [Export]
    private House house;

    [Export]
    private string scene;

    public override void _Ready()
    {
        Pressed += OnRelease;
    }

    private void OnRelease()
    {
        house.Show(scene);
    }
}
