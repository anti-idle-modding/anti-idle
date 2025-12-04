using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Godot;

namespace AntiIdle.src.BattleArena.Zones.YeOldePub
{
    public partial class NextZone : TextureRect
    {
        [Export]
        public double destination { get; set; }

        [Export]
        public double reqRank { get; set; }

        [Export]
        public string areaName { get; set; }

        public override void _EnterTree()
        {
            destination = 1;
            reqRank = 1;
            areaName = "Beginner Training Zone";
        }

        public override void _GuiInput(InputEvent @event)
        {
            if (@event is InputEventMouseButton mouseEvent)
            {
                if (
                    mouseEvent.IsReleased()
                    && !mouseEvent.IsCanceled()
                    && mouseEvent.ButtonIndex == MouseButton.Left
                )
                {
                    if (_root.save.arenaLevel >= reqRank)
                    {
                        this.GetArena().travel(destination);
                    }
                    else
                    {
                        _root.showPopup(
                            "Too dangerous!",
                            "This area is too dangerous for you. Better avoid it for now."
                        );
                    }
                }
            }
        }

        public override void _Process(double delta) { }
    }
}
