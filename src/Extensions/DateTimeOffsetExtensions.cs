using System;
using System.Runtime.CompilerServices;

namespace AntiIdle.Extensions;

/// <summary>
/// Flash compatible extensions for <see cref="DateTimeOffset"/>. Docs from <see href="https://open-flash.github.io/mirrors/as2-language-reference/Date.html"></see>
/// </summary>
[System.Diagnostics.CodeAnalysis.SuppressMessage(
    "Style",
    "IDE1006:Naming Styles",
    Justification = "AS2 names"
)]
public static class DateTimeOffsetExtensions
{
    /// <summary>
    /// Returns the seconds (an integer from 0 to 59) of the specified Date object, according to local time. Local time is determined by the operating system on which Flash Player is running.
    /// </summary>
    public static int getSeconds(this DateTimeOffset dto)
    {
        return dto.LocalDateTime.Second;
    }

    /// <summary>
    /// Returns the minutes (an integer from 0 to 59) of the specified Date object, according to local time. Local time is determined by the operating system on which Flash Player is running.
    /// </summary>
    public static int getMinutes(this DateTimeOffset dto)
    {
        return dto.LocalDateTime.Minute;
    }

    /// <summary>
    /// Returns the hour (an integer from 0 to 23) of the specified Date object, according to local time. Local time is determined by the operating system on which Flash Player is running.
    /// </summary>
    public static int getHours(this DateTimeOffset dto)
    {
        return dto.LocalDateTime.Hour;
    }

    /// <summary>
    /// Flash: Returns the day of the week (0 for Sunday, 1 for Monday, and so on) of the specified Date object according to local time.
    /// </summary>
    /// <param name="dto"></param>
    /// <returns>a double cast from <see cref="DayOfWeek"/></returns>
    public static double getDay(this DateTimeOffset dto)
    {
        return (double)dto.LocalDateTime.DayOfWeek;
    }

    /// <summary>
    /// Flash: Returns the number of milliseconds since midnight January 1, 1970, universal time.
    /// </summary>
    /// <param name="dto"></param>
    /// <returns></returns>
    public static long getTime(this DateTimeOffset dto)
    {
        return dto.ToUnixTimeMilliseconds();
    }

    /// <summary>
    /// Returns the year of the specified Date object, according to local time. Local time is determined by the operating system on which Flash Player is running. The year is the full year minus 1900. For example, the year 2000 is represented as 100.
    /// </summary>
    /// <returns>year - 1900</returns>
    public static int getYear(this DateTimeOffset dto)
    {
        return dto.LocalDateTime.Year - 1900;
    }

    /// <summary>
    /// Flash: Returns the month (0 for January, 1 for February, and so on) of the specified Date object, according to local time. Local time is determined by the operating system on which Flash Player is running.
    /// </summary>
    /// <param name="dto"></param>
    /// <returns>the month as an integer (0 based)</returns>
    public static int getMonth(this DateTimeOffset dto)
    {
        return dto.LocalDateTime.Month - 1;
    }

    /// <summary>
    /// Flash: Returns the day of the month (an integer from 1 to 31) of the specified Date object according to local time. Local time is determined by the operating system on which Flash Player is running.
    /// </summary>
    /// <param name="dto"></param>
    /// <returns></returns>
    public static int getDate(this DateTimeOffset dto)
    {
        return dto.LocalDateTime.Day;
    }
}
