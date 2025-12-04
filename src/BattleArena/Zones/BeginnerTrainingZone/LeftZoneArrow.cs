using System;
using Godot;

public partial class LeftZoneArrow : TextureRect
{
    private double destination { get; set; }
    private double reqRank { get; set; }

    // MATCH: DefineSprite_3877-frame_2-PlaceObject3_3326_8-CLIPACTIONRECORD on(release).as
    public override void _GuiInput(InputEvent @event)
    {
        if (@event.IsLeftMouseButtonJustReleased())
        {
            if (_root.save.arenaLevel >= reqRank)
            {
                this.GetArena().travel(destination);
            }
            else
            {
                _root.showPopup(
                    "Too dangerous!",
                    "The next area is too dangerous for you. Better avoid it for now."
                );
            }
        }
    }

    // Called when the node enters the scene tree for the first time.
    // MATCH: DefineSprite_3877-frame_2-PlaceObject3_3326_8-CLIPACTIONRECORD onClipEvent(load).as
    public override void _Ready()
    {
        destination = 0;
        reqRank = 1;
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta) { }
}
