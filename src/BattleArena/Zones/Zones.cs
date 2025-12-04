using System;
using System.Linq;
using System.Reflection;
using AntiIdle.Common.Nodes;
using AntiIdle.src.BattleArena.Zones;
using AntiIdle.src.Common;
using Godot;
using OneOf.Types;

public partial class Zones : SceneManager
{
    [Export]
    public ZoneResource YeOldePubMeta { get; set; }

    [Export]
    public ZoneResource TrainingZoneMeta { get; set; }

    // MATCH: DefineSprite_6014-frame_1-PlaceObject2_3877_1-CLIPACTIONRECORD onClipEvent(load).as
    // this onClipEvent(load) seems to run when a sprite is added to a frame.
    public override void _EnterTree()
    {
        // Load all zone resources from the Zones folder
        LoadZonesNonRecursive("res://src/BattleArena/Zones");
        GD.Print($"Total zones loaded: {scenes.Count}");
        gotoAndStop((int)_root.save.arenaZone + 1);
    }

    // Called when the node enters the scene tree for the first time.
    public override void _Ready() { }

    private void LoadZonesNonRecursive(string folder)
    {
        var dir = DirAccess.Open(folder);
        if (dir == null)
        {
            GD.PushError($"Cannot open folder: {folder}");
            return;
        }

        dir.ListDirBegin();

        string file = dir.GetNext();
        while (!string.IsNullOrEmpty(file))
        {
            if (!dir.CurrentIsDir())
            {
                if (file.EndsWith(".tres") || file.EndsWith(".res"))
                {
                    var full = $"{folder}/{file}";
                    var resource = ResourceLoader.Load(full);

                    if (resource is ZoneResource z)
                    {
                        scenes[z.FrameNumber.ToString()] = z.Zone;
                        GD.Print($"Loaded zone: Frame {z.FrameNumber} -> {full}");
                    }
                }
            }

            file = dir.GetNext();
        }

        dir.ListDirEnd();
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
        var fr = _root.save.arenaZone + 1;
        _ = int.TryParse(currentScene, out int _currentframe);
        GD.Print(
            $"Zones _Process: read scene: {currentScene}, current frame {_currentframe}, target frame {fr}"
        );
        if (_currentframe != fr)
        {
            gotoAndStop(fr);
        }
    }
}
