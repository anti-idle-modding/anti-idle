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
        infoPopupBlue?.QueueFree();
        infoPopupRed?.QueueFree();
        //return;
        if (frame == 1)
        {
            infoPopupRed = TooltipRedPackedScene.Instantiate<TooltipRed>();
            infoPopupBlue = PopupInfoBluePackedScene.Instantiate<PopupInfoBlue>();
            AddChild(infoPopupBlue);
            AddChild(infoPopupRed);
            //infoPopupRed.Visible = true;
            //infoPopupRed.ProcessMode = ProcessModeEnum.Inherit;
            //infoPopupBlue.Visible = true;
            //infoPopupBlue.ProcessMode = ProcessModeEnum.Inherit;
        }
        if (frame == 2)
        {
            infoPopupBlue = PopupInfoBluePackedScene.Instantiate<PopupInfoBlue>();
            infoPopupBlue.ZIndex = 999;
            infoPopupBlue.Visible = true;
            AddChild(infoPopupBlue);
        }
        if (frame == 3)
        {
            infoPopupBlue = null;
            infoPopupRed = null;
        }
    }
}
