using System;
using Godot;

// MATCH: DefineButton2_8158-BUTTONCONDACTION on(press).as
public partial class UpScrollbar : TextureButton
{
    public override void _GuiInput(InputEvent @event)
    {
        if (@event.IsActionReleased("leftclick"))
        {
            if (_root.breakoffset > 0)
            {
                _root.breakoffset -= 4;
                if (_root.breakoffset < 0)
                {
                    _root.breakoffset = 0;
                }
                _root.updateBreakNews = 1;
            }
        }
    }

    // Called when the node enters the scene tree for the first time.
    public override void _Ready() { }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta) { }
}
