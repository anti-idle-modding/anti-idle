using System;
using Godot;

public partial class DayNightCycle : Control
{
    private Control node;
    private int _prev = -1;

    // MATCH: DefineSprite_7711-frame_1-PlaceObject2_7708_9-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        if (_prev >= 0)
        {
            GetNode<Control>(_prev.ToString()).Visible = false;
        }
        var hour = _root.systemclock.getHours();
        GetNode<Control>(hour.ToString()).Visible = true;
        _prev = hour;
    }
}
