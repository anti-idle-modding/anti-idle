using Godot;
using System.Collections.Generic;
using System.Reflection;

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

    extension(Node2D source)
    {
        public float _x => source._X;
        public float _y => source._Y;
        public float _X
        {
            get => source.Position.X;
            set {
                source.Position = source.Position with { X = value };
            }
        }
        public float _Y
        {
            get => source.Position.Y;
            set {
                source.Position = source.Position with { Y = value };
            }
        }

        public float _alpha
        {
            get => source.Modulate.A;
            set {
                source.Modulate = source.Modulate with { A = value / 100 };
            }
        }
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
        public void gotoAndStop(int frame)
        {
            source.Frame = frame - 1;
        }
    }

    extension(Key source)
    {
        public static bool isDown(string input_map_key)
        {
            return Input.IsActionPressed(input_map_key);
        }
    }
}

public static class AnimatedSprite2DExtensions
{

}
