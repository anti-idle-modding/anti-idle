using AntiIdle.Common.Nodes;
using Godot;
using System;

// MATCH: frame_11/PlaceObject2_1602_44/CLIPACTIONRECORD on(release).as
public partial class CreditsButton : TextureButton
{
    [Export]
    public SceneManager popup;

    public override void _Pressed()
    {
        popup.Show("Credits");
    }

}

