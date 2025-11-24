using System.Collections.Generic;
using Godot;

namespace AntiIdle.Common.Flash;

public static class Extension
{
    public static int indexOf(this string str, string value) => str.IndexOf(value);

    public static string substr(this string str, int start, int len) => str.Substr(start, len);

    //public static int _currentframe(this AnimatedSprite2D sprite)
    //{
    //    return sprite.Frame + 1;
    //}

    //public static void gotoAndStop(this AnimatedSprite2D sprite, int frame)
    //{
    //    sprite.Frame = frame - 1;
    //}
}

public static class AnimatedSprite2DExtensions
{

}
