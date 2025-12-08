using System.Collections.Generic;
using System.Reflection;
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

    public static void gotoAndStop(this AnimatedSprite2D sprite, int frame)
    {
        sprite.Frame = frame - 1;
    }

    extension(AnimatedSprite2D source)
    {
        public int _width
        {
            get
            {
                var texture = source.SpriteFrames.GetFrameTexture("default", source.Frame);
                if (texture is null)
                {
                    return 0;
                }
                return texture.GetWidth();
            }
        }

        public int _currentframe => source.Frame + 1;
    }

    extension(Key source)
    {
        public static bool isDown(string input_map_key)
        {
            return Input.IsActionPressed(input_map_key);
        }
    }
}

public static class AnimatedSprite2DExtensions { }
