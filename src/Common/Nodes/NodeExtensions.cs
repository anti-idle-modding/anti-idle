using Godot;

#nullable enable
namespace AntiIdle.Common.Nodes;

public static class NodeExtensions
{
    extension(Node source)
    {
        public Arena? GetArena()
        {
            return (Arena?)source.GetTree().GetFirstNodeInGroup("arena");
        }
    }
    extension(Node2D source)
    {
        public float _alpha
        {
            get => source.Modulate.A;
            set { source.Modulate = source.Modulate with { A = value / 100 }; }
        }

        public float _xmouse
        {
            get => source.ToLocal(source.GetViewport().GetMousePosition()).X;
        }
        public float _ymouse
        {
            get => source.ToLocal(source.GetViewport().GetMousePosition()).Y;
        }

        public float _X
        {
            get => source.Position.X;
            set { source.Position = source.Position with { X = value }; }
        }
        public float _Y
        {
            get => source.Position.Y;
            set { source.Position = source.Position with { Y = value }; }
        }

        public float _x
        {
            get => source._X;
            set => source._X = value;
        }
        public float _y
        {
            get => source._Y;
            set => source._Y = value;
        }
    }

    extension(Control source)
    {
        public float _height
        {
            get => source.GetRect().Size.Y;
            set { source.SetSize(source.GetRect().Size with { Y = value }); }
        }
        public float _xmouse
        {
            get => source.GetLocalMousePosition().X;
        }
        public float _ymouse
        {
            get => source.GetLocalMousePosition().Y;
        }
        public float _X
        {
            get => source.Position.X;
            set { source.Position = source.Position with { X = value }; }
        }
        public float _Y
        {
            get => source.Position.Y;
            set { source.Position = source.Position with { Y = value }; }
        }

        public float _x
        {
            get => source._X;
            set => source._X = value;
        }
        public float _y
        {
            get => source._Y;
            set => source._Y = value;
        }
    }

    extension(RichTextLabel source)
    {
        public string htmlText
        {
            get => source.Text;
            set => source.Text = value;
        }

        public bool autoSize
        {
            get => source.FitContent;
            set => source.FitContent = value;
        }
    }
}
