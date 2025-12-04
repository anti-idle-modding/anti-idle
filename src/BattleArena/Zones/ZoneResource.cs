using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Godot;

namespace AntiIdle.src.BattleArena.Zones
{
    [GlobalClass]
    public partial class ZoneResource : Resource
    {
        [Export]
        public int FrameNumber { get; set; }

        [Export]
        public PackedScene Zone { get; set; }
    }
}
