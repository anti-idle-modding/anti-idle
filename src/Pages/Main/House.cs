using System;
using AntiIdle.Common.Nodes;
using Godot;

public partial class House : SceneManager
{
    public Arena arena => GetNode<Arena>("Movie");

    public override void _EnterTree()
    {
        Show("ButtonMachine");
    }
}
