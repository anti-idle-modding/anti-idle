using Godot;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AntiIdle.src.Common.Flash
{
    [GlobalClass]
    public partial class AnimatedSprite2DFlash : AnimatedSprite2D
    {
        public int _currentframe => Frame + 1;
        public void gotoAndStop(int frame)
        {
            Frame = frame;
        }
    }
}
