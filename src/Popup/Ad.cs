using System;
using Godot;

public partial class Ad : HBoxContainer
{
    [Export]
    public PackedScene TooltipRedPackedScene { get; set; }

    [Export]
    public PackedScene PopupInfoBluePackedScene { get; set; }

    [Export]
    public TooltipRed infoPopupRed { get; set; }

    [Export]
    public PopupInfoBlue infoPopupBlue { get; set; }

    public PopupInfoBlue bgBox
    {
        get => infoPopupBlue;
        set => infoPopupBlue = value;
    }

    public TooltipRed bgBox2
    {
        get => infoPopupRed;
        set => infoPopupRed = value;
    }

    public RichTextLabel textBox
    {
        get => infoPopupBlue.TextBox;
        set => infoPopupBlue.TextBox = value;
    }

    public RichTextLabel textBox2
    {
        get => infoPopupRed.TextBox;
        set => infoPopupRed.TextBox = value;
    }

    [Export]
    public int _currentframe { get; set; }

    // Called when the node enters the scene tree for the first time.
    public override void _Ready() { }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta) { }

    public void gotoAndStop(int frame)
    {
        _currentframe = frame;
        if (frame == 1)
        {
            infoPopupRed.Visible = true;
            infoPopupRed.ProcessMode = ProcessModeEnum.Inherit;
            infoPopupBlue.Visible = true;
            infoPopupBlue.ProcessMode = ProcessModeEnum.Inherit;
        }
        else if (frame == 2)
        {
            infoPopupBlue.Visible = true;
            infoPopupBlue.ProcessMode = ProcessModeEnum.Inherit;
            infoPopupRed.Visible = false;
            infoPopupRed.ProcessMode = ProcessModeEnum.Disabled;
        }
        else if (frame == 3)
        {
            infoPopupRed.Visible = false;
            infoPopupRed.ProcessMode = ProcessModeEnum.Disabled;
            infoPopupBlue.Visible = false;
            infoPopupBlue.ProcessMode = ProcessModeEnum.Disabled;
        }
    }
}
