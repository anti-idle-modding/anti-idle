using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;

namespace AntiIdle.Common.Flash;

#nullable enable
public class FlashList<T> : Dictionary<int, T>
    where T : notnull
{
    public FlashList() { }

    public FlashList(List<T> values)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }
    }

    public FlashList(List<T> values, Dictionary<int, T> extra)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }

        foreach (var kv in extra)
            this[kv.Key] = kv.Value;
    }

    [DisallowNull]
    public new T? this[int key]
    {
        get => TryGetValue(key, out var value) ? value : value;
        set => base[key] = value;
    }

    [DisallowNull]
    public T? this[double key]
    {
        get => this[(int)key];
        set => base[(int)key] = value;
    }
}

public class FlashListBool : Dictionary<int, bool>
{
    public FlashListBool() { }

    public FlashListBool(List<bool> values)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }
    }

    public FlashListBool(List<bool> values, Dictionary<int, bool> extra)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }

        foreach (var kv in extra)
            this[kv.Key] = kv.Value;
    }

    [DisallowNull]
    public new bool? this[int key]
    {
        get => TryGetValue(key, out var value) ? value : null;
        set => base[key] = (bool)value;
    }

    [DisallowNull]
    public bool? this[double key]
    {
        get => this[(int)key];
        set => base[(int)key] = (bool)value;
    }
}

public class FlashListInt : Dictionary<int, int>
{
    public FlashListInt() { }

    public FlashListInt(List<int> values)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }
    }

    public FlashListInt(List<int> values, Dictionary<int, int> extra)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }

        foreach (var kv in extra)
            this[kv.Key] = kv.Value;
    }

    [DisallowNull]
    public new int? this[int key]
    {
        get => TryGetValue(key, out var value) ? value : null;
        set => base[key] = (int)value;
    }

    [DisallowNull]
    public int? this[double key]
    {
        get => this[(int)key];
        set => base[(int)key] = (int)value;
    }
}

public class FlashListDouble : Dictionary<int, double>
{
    public FlashListDouble() { }

    public FlashListDouble(List<double> values)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }
    }

    public FlashListDouble(List<double> values, Dictionary<int, double> extra)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }

        foreach (var kv in extra)
            this[kv.Key] = kv.Value;
    }

    [DisallowNull]
    public new double? this[int key]
    {
        get => TryGetValue(key, out var value) ? value : null;
        set => base[key] = (double)value;
    }

    [DisallowNull]
    public double? this[double key]
    {
        get => this[(int)key];
        set => base[(int)key] = (double)value;
    }
}
