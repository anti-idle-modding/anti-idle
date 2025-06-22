using AntiIdle.Common.Nodes;
using Godot;
using System;


// MATCH: frame_11/PlaceObject2_1602_40/CLIPACTIONRECORD on(release).as
public partial class BackupHelpButton : TextureButton
{
    [Export]
    public SceneManager popup;

    public override void _Pressed()
    {
        popup.Show("BackupHelp");
    }

}
