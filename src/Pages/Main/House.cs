using System;
using AntiIdle.Common.Nodes;
using Godot;

public partial class House : SceneManager
{
    public override void _EnterTree()
    {
        Show("BattleArena");
    }
}
