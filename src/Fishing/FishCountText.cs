using System;
using Godot;

public partial class FishCountText : Label
{
    // MATCH: DefineSprite_7711-frame_1-DoAction.as
    public override void _Ready()
    {
        Text = _root.withComma(_root.fishCount);
        if (_root.fishCount >= _root.save.fishCapacity)
        {
            LabelSettings.FontColor = c(0xff3333ff);
        }
    }

    public override void _Process(double delta)
    {
        Text = _root.withComma(_root.fishCount);
        if (_root.fishCount >= _root.save.fishCapacity)
        {
            LabelSettings.FontColor = c(0xff0000ff);
        }
        else
        {
            LabelSettings.FontColor = c(0xffff00ff);
        }
    }
}
