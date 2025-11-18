using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OneOf;

namespace AntiIdle.src.Common.Flash
{
    public class StringOrNumber : OneOfBase<string, int>
    {
        StringOrNumber(OneOf<string, int> _)
            : base(_) { }

        // optionally, define implicit conversions
        // you could also make the constructor public
        public static implicit operator StringOrNumber(string _) => new StringOrNumber(_);

        public static implicit operator StringOrNumber(int _) => new StringOrNumber(_);

        public static explicit operator string(StringOrNumber _) => _.AsT0;

        public static explicit operator int(StringOrNumber _) => _.AsT1;

        public (bool isNumber, int number) TryGetNumber() =>
            Match(s => (int.TryParse(s, out var n), n), i => (true, i));

        // --------- OPERATORS ---------

        public static StringOrNumber operator +(StringOrNumber a, StringOrNumber b)
        {
            // number + number
            if (a.IsT1 && b.IsT1)
                return a.AsT1 + b.AsT1;

            // otherwise treat both as string for concatenation
            string aStr = a.IsT0 ? a.AsT0 : a.AsT1.ToString();
            string bStr = b.IsT0 ? b.AsT0 : b.AsT1.ToString();

            return aStr + bStr;
        }

        public static StringOrNumber operator -(StringOrNumber a, StringOrNumber b)
        {
            // number + number → numeric add
            if (a.IsT1 && b.IsT1)
                return a.AsT1 - b.AsT1;

            // mixed types → not allowed
            throw new InvalidOperationException("subtraction only valid for numbers.");
        }

        public static bool operator ==(StringOrNumber a, StringOrNumber b) => Equals(a, b);

        public static bool operator !=(StringOrNumber a, StringOrNumber b) => !Equals(a, b);

        public static StringOrNumber operator *(StringOrNumber a, StringOrNumber b)
        {
            if (a.IsT1 && b.IsT1)
                return a.AsT1 * b.AsT1;

            throw new InvalidOperationException("Multiplication only valid for numbers.");
        }

        public static StringOrNumber operator %(StringOrNumber a, StringOrNumber b)
        {
            if (a.IsT1 && b.IsT1)
                return a.AsT1 % b.AsT1;

            throw new InvalidOperationException("Modulo only valid for numbers.");
        }

        public static bool operator <=(StringOrNumber a, StringOrNumber b) =>
            CompareOrThrow(a, b) <= 0;

        public static bool operator <(StringOrNumber a, StringOrNumber b) =>
            CompareOrThrow(a, b) < 0;

        public static bool operator >=(StringOrNumber a, StringOrNumber b) =>
            CompareOrThrow(a, b) >= 0;

        public static bool operator >(StringOrNumber a, StringOrNumber b) =>
            CompareOrThrow(a, b) > 0;

        private static int CompareOrThrow(StringOrNumber a, StringOrNumber b)
        {
            // number vs number
            if (a.IsT1 && b.IsT1)
                return a.AsT1.CompareTo(b.AsT1);

            // string vs string
            if (a.IsT0 && b.IsT0)
            {
                if (int.TryParse(a.AsT0, out int ia) && int.TryParse(b.AsT0, out int ib))
                    return ia.CompareTo(ib);

                throw new InvalidOperationException(
                    $"Cannot parse string values '{a.AsT0}' and '{b.AsT0}' as integers for comparison."
                );
            }

            // string vs number
            if (a.IsT0 && b.IsT1)
            {
                if (int.TryParse(a.AsT0, out int ia))
                    return ia.CompareTo(b.AsT1);

                throw new InvalidOperationException(
                    $"Cannot parse string value '{a.AsT0}' as integer for comparison with number '{b.AsT1}'."
                );
            }

            // number vs string
            if (a.IsT1 && b.IsT0)
            {
                if (int.TryParse(b.AsT0, out int ib))
                    return a.AsT1.CompareTo(ib);

                throw new InvalidOperationException(
                    $"Cannot parse string value '{b.AsT0}' as integer for comparison with number '{a.AsT1}'."
                );
            }

            throw new InvalidOperationException("Unexpected comparison state.");
        }

        public override bool Equals(object obj)
        {
            // Reference equality
            if (ReferenceEquals(this, obj))
                return true;

            // Null check
            if (obj is null)
                return false;

            // Type check
            if (obj is not StringOrNumber other)
                return false;

            // Both numbers
            if (this.IsT1 && other.IsT1)
                return this.AsT1 == other.AsT1;

            // Both strings
            if (this.IsT0 && other.IsT0)
                return string.Equals(this.AsT0, other.AsT0, StringComparison.Ordinal);

            // Mixed types → always false
            return false;
        }

        public override int GetHashCode()
        {
            // Different seed values per type to avoid collisions
            if (IsT1) // number
            {
                unchecked
                {
                    int hash = 17;
                    hash = hash * 31 + 1; // type discriminator for int
                    hash = hash * 31 + AsT1.GetHashCode();
                    return hash;
                }
            }
            else // string
            {
                unchecked
                {
                    int hash = 17;
                    hash = hash * 31 + 0; // type discriminator for string
                    hash = hash * 31 + AsT0.GetHashCode();
                    return hash;
                }
            }
        }
    }
}
