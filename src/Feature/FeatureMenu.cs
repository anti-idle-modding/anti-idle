using System;
using AntiIdle.Common;
using Godot;

public partial class FeatureMenu : Control
{
    private int targetY;
    private bool canOpen;
    private Control node;
    private string _currentframe;

    [Export]
    Control area;

    void Show(string name)
    {
        _currentframe = name;
        if (node != null)
            node.Visible = false;
        node = GetNode<Control>(name);
        node.Visible = true;
    }

    // MATCH: DefineSprite_8081-frame_2-PlaceObject2_2714_3406-CLIPACTIONRECORD onClipEvent(load).as
    public override void _Ready()
    {
        Show("Closed");
        targetY = 0;
    }

    public void OnClosedMouseEntered()
    {
        var fr = "";
        if (canOpen == true)
        {
            fr = "Open";
        }
        else
        {
            fr = "Closed";
        }
        Show(fr);
    }

    public void OnClosedMouseExited()
    {
        //Show("Closed");
    }

    public void OnOpenMouseExited()
    {
        Show("Closed");
    }

    // MATCH: DefineSprite_8081-frame_2-PlaceObject2_2714_3406-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        // TODO
        // if (_root.house.arena._currentframe == 2 || _root.house._currentframe == 10 && _root.house.mainArcade._currentframe >= 21 && _root.house.mainArcade._currentframe <= 28 || _root.house.mainArcade._currentframe == 2 && _root.house.mainArcade.shop._currentframe != 1)
        // {
        //     targetY = -50;
        //     canOpen = false;
        // }
        // else
        // {
        var y = area.GetLocalMousePosition().Y;
        if (
            y > 50
            && node.Name == "Closed" /* && _root.save.bestLevel > 30 */
        )
        {
            targetY = -50;
        }
        else
        {
            targetY = 0;
        }
        canOpen = true;
        // }
        Position = Position with
        {
            Y = (float)(Position.Y + (targetY - Position.Y) * Const.Slowdown(delta) / 5),
        };
    }
}
