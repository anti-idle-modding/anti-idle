using Godot;

namespace AntiIdle.Common.Nodes;

public partial class BackButton : FlashButton
{
    public override void _Ready()
    {
        MouseEntered += onMouseEntered;
        MouseExited += OnMouseExited;
    }

    // MATCH: frame_13-PlaceObject2_1602_3742-CLIPACTIONRECORD on(dragOver,rollOver).as
    private void onMouseEntered()
    {
        _root.actiondescription =
            "[b][color=#FFFF00]Back to Menu[/color][/b]\nGo back to the main menu.";
    }

    // MATCH: frame_13-PlaceObject2_1602_3742-CLIPACTIONRECORD on(rollOut,dragOut).as
    private void OnMouseExited()
    {
        _root.actiondescription = "";
    }

    // MATCH: frame_13-PlaceObject2_1602_3742-CLIPACTIONRECORD on(release).as
    public override void _GuiInput(InputEvent @event)
    {
        if (
            Input.IsActionJustReleased("leftclick")
            && _xmouse >= 0
            && _xmouse <= 52
            && _ymouse >= 0
            && _ymouse <= 20
        )
        {
            GetTree().ChangeSceneToFile("src/MainMenu/MainMenu.tscn");
        }
    }
}
