using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AntiIdle.src.Common.Flash
{
    public class ListWithDoubleIndexing<T> : List<T>
    {
        [DisallowNull]
        public T this[double key]
        {
            get => base[(int)key];
            set => base[(int)key] = value;
        }
    }
}
