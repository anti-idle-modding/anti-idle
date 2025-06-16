using Godot;
using System;

public partial class BackupHelp : Control
{
    // MATCH: DefineSprite_2407/frame_2/PlaceObject2_2382_1/CLIPACTIONRECORD on(release).as
    public override void _UnhandledInput(InputEvent @event)
    {
        GD.Print(@event);
        if (@event is InputEventMouseButton click)
        {
            if (click.Pressed && click.ButtonIndex == MouseButton.Left)
            {
                QueueFree();
            }
        }
    }
}
