using Godot;

namespace AntiIdle.Fishing.Bar;

public partial class CatchLine : Line2D
{
    // MATCH: DefineSprite_7718-frame_1-PlaceObject2_7717_4-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _EnterTree()
    {
        Position = Position with { X = (float)(Math.round(_root.playerDist) + 20) };
        if (_root.fishStatus == 3)
        {
            Modulate = Modulate with { A = 1 };
        }
        else
        {
            Modulate = Modulate with { A = 0 };
        }
    }
}
