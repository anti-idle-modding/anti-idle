using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#nullable enable
namespace AntiIdle.src.Common.Flash
{
    /// <summary>
    /// Emulates Flash's list access behavior that out of bounds accesses return undefined, and not an error.
    /// </summary>
    public class NonNullableList<T> : List<T>
        where T : notnull
    {
        [DisallowNull]
        public new T? this[int key]
        {
            get
            {
                if (Count > key)
                    return base[key];
                return default;
            }
            set => base[key] = value;
        }

        [DisallowNull]
        public T? this[double key]
        {
            get => base[(int)key];
            set => base[(int)key] = value;
        }
    }
}
