using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AntiIdle.src.Common
{
    /// <summary>
    /// Denotes a class as acting as a frame like in Flash.
    /// </summary>
    public interface IFrame
    {
        public static int FrameNumber { get; }
    }
}
