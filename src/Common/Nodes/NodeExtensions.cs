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
}
