namespace AntiIdle.Common.Flash;

#nullable enable
public static class Numbers
{
    public static bool isNaN(double? number)
    {
        if (number is null)
        {
            // this returns true instead of false since the flash codebase doesn't seem to ever assign null to a variable,
            // it only uses this to checkf or undefined, which returns true
            // deviates from the spec where null => 0 => false
            return true;
        }
        return double.IsNaN(number.Value);
    }
}
