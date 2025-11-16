using System;
using AntiIdle.Common.Nodes;
using Godot;

public partial class Credits : SceneData
{
    [Export]
    public SceneData popup;

    public override void _Input(InputEvent @event)
    {
        this.GetViewport().SetInputAsHandled();
        if (Input.IsActionJustReleased("leftclick"))
        {
            popup.Unload();
        }
    }

    // Called when the node enters the scene tree for the first time.
    public override void _Ready() { }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta) { }
}
