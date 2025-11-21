namespace AntiIdle.Common.Flash;

#nullable enable
public static class Numbers
{
    public static bool isNaN(double? number)
    {
        if (number is null)
        {
            return false;
        }
        return double.IsNaN(number.Value);
    }
}
