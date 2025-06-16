using Godot;
using System;

public partial class GenerateSaveLocation : TextureButton
{
    [Export]
    RichTextLabel helpText;

    public override void _Pressed()
    {
        helpText.Text = $"Your saves are in {OS.GetDataDir()}.";
    }

}
