using System;
using System.Diagnostics.Metrics;
using System.Runtime.Intrinsics.Arm;
using Godot;

// MATCH: DefineSprite_8223-frame_1-PlaceObject2_8184_36-CLIPACTIONRECORD on(press).as
// MATCH: DefineSprite_8223-frame_1-PlaceObject2_8184_36-CLIPACTIONRECORD on(releaseOutside,release).as
// MATCH: DefineSprite_8223-frame_1-PlaceObject2_8184_36-CLIPACTIONRECORD onClipEvent(enterFrame).as
// MATCH: DefineSprite_8223-frame_1-PlaceObject2_8184_36-CLIPACTIONRECORD onClipEvent(load).as
public partial class BreakingNewsScrollThumb : VScrollBar
{
    private RichTextLabel _newsViewer;
    private Vector2? _newsViewerViewport;

    public override void _Ready()
    {
        this.ValueChanged += this.OnValueChanged;
        this._newsViewer = GetNode<RichTextLabel>("%NewsViewer");
        _newsViewerViewport = _newsViewer.GlobalPosition;
    }

    public override void _UnhandledInput(InputEvent @event)
    {
        if (@event is InputEventMouseButton mouseButtonEvent)
        {
            // side + vscrollbar
            const float viewerXTopLeft = 9 + 21;
            const float viewerWidth = 480;
            const float viewerYTopLeft = 455;
            const float viewerHeight = 80;
            var inViewer = mouseButtonEvent.Position switch
            {
                (
                    >= viewerXTopLeft
                        and <= viewerXTopLeft + viewerWidth,
                    >= viewerYTopLeft
                        and <= viewerYTopLeft + viewerHeight
                ) => true,
                _ => false,
            };
            if (!inViewer)
            {
                return;
            }

            if (mouseButtonEvent.IsPressed())
            {
                if (mouseButtonEvent.ButtonIndex == MouseButton.WheelUp)
                {
                    Value -= 1;
                }
                else if (mouseButtonEvent.ButtonIndex == MouseButton.WheelDown)
                {
                    Value += 1;
                }
            }
        }
    }

    private void OnValueChanged(double value)
    {
        var clamped = System.Math.Clamp((int)value, 0, 26);
        _root.breakoffset = clamped;
        _root.updateBreakNews = 1;
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
        if (Value != _root.breakoffset)
        {
            Value = _root.breakoffset;
            _root.updateBreakNews = 1;
        }
    }
}
