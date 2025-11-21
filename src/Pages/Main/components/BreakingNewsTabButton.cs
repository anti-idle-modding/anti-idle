using Godot;
using static Godot.BaseButton;

[Tool]
[GlobalClass]
public partial class BreakingNewsTabButton : TextureButton
{
    private Label _label;
    private BreakingNews _breakingNews;

    [Export(PropertyHint.MultilineText)]
    public string ButtonText
    {
        get => _buttonText;
        set
        {
            _buttonText = value;
            UpdateLabelText();
        }
    }
    private string _buttonText = "";

    // The 5 tab numbers are set in the godot scene that uses the control
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_14-CLIPACTIONRECORD onClipEvent(load).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_17-CLIPACTIONRECORD onClipEvent(load).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_20-CLIPACTIONRECORD onClipEvent(load).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_23-CLIPACTIONRECORD onClipEvent(load).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_26-CLIPACTIONRECORD onClipEvent(load).as
    [Export]
    public int TabNumber { get; set; } = 0;

    public override void _Pressed() { }

    public override void _EnterTree()
    {
        _label = GetNodeOrNull<Label>("Label");
        UpdateLabelText();
        _breakingNews = FindParent("BreakingNews") as BreakingNews;
    }

    public override void _Ready()
    {
        _label ??= GetNodeOrNull<Label>("Label");
        UpdateLabelText();
    }

    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_14-CLIPACTIONRECORD on(release).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_17-CLIPACTIONRECORD on(release).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_20-CLIPACTIONRECORD on(release).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_23-CLIPACTIONRECORD on(release).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_26-CLIPACTIONRECORD on(release).as
    public override void _GuiInput(InputEvent @event)
    {
        if (@event is InputEventMouseButton mouseEvent)
        {
            // Prevent Godot from applying default Button logic (like Pressed state on press, and release (but not inside the boundary anymore)
            AcceptEvent();

            if (
                mouseEvent.IsReleased()
                && !mouseEvent.IsCanceled()
                && mouseEvent.ButtonIndex == MouseButton.Left
            )
            {
                if (Engine.IsEditorHint())
                    return;

                if (_breakingNews == null)
                    return;

                if (_breakingNews.curTab == TabNumber)
                    return;

                _breakingNews.curTab = TabNumber;
                _root.saveGlobal.defTab = TabNumber;
                _root.updateBreakNews = 1;

                ToggleMode = true;
                ButtonPressed = true;
            }
        }
    }

    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_14-CLIPACTIONRECORD onClipEvent(enterFrame).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_17-CLIPACTIONRECORD onClipEvent(enterFrame).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_20-CLIPACTIONRECORD onClipEvent(enterFrame).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_23-CLIPACTIONRECORD onClipEvent(enterFrame).as
    // MATCH: DefineSprite_8223-frame_1-PlaceObject2_8170_26-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        if (Engine.IsEditorHint())
        {
            UpdateLabelText();
            return;
        }

        if (_breakingNews != null)
        {
            ButtonPressed = _breakingNews.curTab == TabNumber;
        }
    }

    private void UpdateLabelText()
    {
        if (_label != null)
            _label.Text = _buttonText ?? "";
    }
}
