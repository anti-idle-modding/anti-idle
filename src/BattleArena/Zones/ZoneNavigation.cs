using System;
using Godot;
#nullable enable
public partial class ZoneNavigation : Control
{
    [Export]
    public Script? LeftZoneButtonScript { get; set; }

    [Export]
    public TextureRect LeftZoneButton { get; set; } = null!;

    [Export]
    public Script? NextZoneScript { get; set; }

    [Export]
    public TextureRect NextZoneButton { get; set; } = null!;

    [Export]
    public Script? DownZoneScript { get; set; }

    [Export]
    public TextureRect DownZoneButton { get; set; } = null!;

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        if (LeftZoneButtonScript != null)
        {
            LeftZoneButton.SetScript(LeftZoneButtonScript);
        }
        else
        {
            LeftZoneButton.Visible = false;
        }
        if (NextZoneScript != null)
        {
            NextZoneButton.SetScript(NextZoneScript);
        }
        else
        {
            NextZoneButton.Visible = false;
        }
        if (DownZoneScript != null)
        {
            DownZoneButton.SetScript(DownZoneScript);
        }
        else
        {
            DownZoneButton.Visible = false;
        }
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta) { }
}
