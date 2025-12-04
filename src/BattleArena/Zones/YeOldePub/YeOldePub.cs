using System;
using AntiIdle.src.BattleArena.Zones;
using AntiIdle.src.Common;
using Godot;

public partial class YeOldePub : Node, IFrame
{
    public static int FrameNumber => 1;

    [Export]
    public ZoneResource ZoneResource { get; set; } = null!;

    // MATCH: DefineSprite_3877-frame_1-DoAction.as
    public override void _EnterTree()
    {
        _root.fightStat = "Ye Olde Pub";
        _root.areaSafe = true;
        _root.areaUnderwater = false;
        _root.areaSpawn = 10;
        _root.areaSpawnReduce = 0;
        _root.areaRareChance = 0;
        _root.areaAllyChance = 0;
        _root.areaDamagePct = 100;
        _root.areaEpicChance = 0;
        _root.areaEpicChance2 = 0;
        _root.challengeCompatible = false;
        // REMOVE THIS LATER.
        _root.fightStat2 = "Godot test";
    }
}
