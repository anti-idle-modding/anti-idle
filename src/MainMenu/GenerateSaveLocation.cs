using System;
using Godot;

public partial class GenerateSaveLocation : Button
{
    [Export]
    RichTextLabel helpText;

    public override void _Pressed()
    {
        helpText.Text = $"Your saves are in {OS.GetDataDir()}.";
    }
}
