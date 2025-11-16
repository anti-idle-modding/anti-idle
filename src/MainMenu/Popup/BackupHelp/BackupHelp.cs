using System;
using AntiIdle.Common.Nodes;
using Godot;

public partial class BackupHelp : SceneData
{
    [Export]
    public SceneData popup;

    // MATCH: DefineSprite_2407-frame_2-PlaceObject2_2382_1-CLIPACTIONRECORD on(release).as
    public override void _Input(InputEvent @event)
    {
        this.GetViewport().SetInputAsHandled();
        if (Input.IsActionJustReleased("leftclick"))
        {
            popup.Unload();
        }
    }

    public override void _Process(double delta) { }
}
