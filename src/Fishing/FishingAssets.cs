using System;
using Godot;

public partial class FishingAssets : Node
{
    [Export]
    public Label fishCountText;
    private int _currentframe;

    public int fr { get; private set; }

    // MATCH: DefineSprite_7711-frame_1-DoAction.as

    public override void _Ready()
    {
        fishCountText.Text = _root.withComma(_root.fishCount);
        if (_root.fishCount >= _root.save.fishCapacity)
        {
            fishCountText.LabelSettings.FontColor = c(0xff3333ff);
        }
    }

    public override void _Process(double delta)
    {
        fishCountText.Text = _root.withComma(_root.fishCount);
        if (_root.fishCount >= _root.save.fishCapacity)
        {
            fishCountText.LabelSettings.FontColor = c(0xff0000ff);
        }
        else
        {
            fishCountText.LabelSettings.FontColor = c(0xffff00ff);
        }
    }
}
