using System;
using Godot;

public partial class Skill : Control
{
    [Export]
    private Label fishLevelText;
    private double tempLvl;

    void checkFrame()
    {
        if (_root.save.fishLevel >= 51)
        {
            gotoAndStop(3);
        }
        else if (_root.save.fishLevel >= 31)
        {
            gotoAndStop(2);
        }
        else
        {
            gotoAndStop(1);
        }
        fishLevelText.Text = _root.save.fishLevel.ToString();
    }

    // MATCH: DefineSprite_7870-frame_1-PlaceObject2_7751_23-CLIPACTIONRECORD onClipEvent(load).as
    public override void _Ready()
    {
        tempLvl = _root.save.fishLevel;
        checkFrame();
    }

    // MATCH: DefineSprite_7870-frame_1-PlaceObject2_7751_23-CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        if (tempLvl != _root.save.fishLevel)
        {
            tempLvl = _root.save.fishLevel;
            checkFrame();
        }
    }
}
