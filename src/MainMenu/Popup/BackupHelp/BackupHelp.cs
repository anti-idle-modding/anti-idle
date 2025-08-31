using AntiIdle.Common.Nodes;
using Godot;
using System;

public partial class BackupHelp : SceneData
{
    [Export]
    public SceneData popup;

    // MATCH: DefineSprite_2407/frame_2/PlaceObject2_2382_1/CLIPACTIONRECORD on(release).as
    public override void _UnhandledInput(InputEvent @event)
    {
        if (Input.IsActionPressed("leftclick"))
        {
            popup.Unload();
        }
    }

    public override void _Process(double delta)
    {
    }

}
