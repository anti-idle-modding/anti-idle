using System;
using Godot;

namespace AntiIdle.Fishing;

public partial class Score : Control
{
    [Export]
    public Label todayText;

    [Export]
    public Label scoreText;

    [Export]
    public Label recordText;

    [Export]
    public Label skillText;

    [Export]
    public Label perfectText;

    [Export]
    public Label streakText;

    [Export]
    public Node lifeGauge;
}
