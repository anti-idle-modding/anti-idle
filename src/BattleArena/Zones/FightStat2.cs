using System;
using AntiIdle.Common.Nodes;
using Godot;

public partial class FightStat2 : FlashColorRect
{
	double targetAlpha;
	string fightTextX;

	[Export]
	public Label fightText2 { get; set; }

	[Export]
	public string Text
	{
		get => fightText2.Text;
		set => fightText2.Text = value;
	}

	// MATCH: DefineSprite_6014-frame_1-PlaceObject2_4945_2982-CLIPACTIONRECORD onClipEvent(load).as
	public override void _EnterTree()
	{
		_alpha = 0;
		targetAlpha = 0;
		fightTextX = "";
		_root.updateFightStatB = 0;
	}

	// MATCH: DefineSprite_6014-frame_1-PlaceObject2_4945_2982-CLIPACTIONRECORD onClipEvent(enterFrame).as
	public override void _Process(double delta)
	{
		if (fightTextX != _root.fightStat2 || _root.updateFightStatB == 1)
		{
			_root.updateFightStatB = 0;
			fightTextX = _root.fightStat2;
			if (fightTextX != "")
			{
				fightText2.Text = _root.fightStat2;
				targetAlpha = 150;
			}
		}
		targetAlpha -= 40 * delta;
		_alpha = (float)targetAlpha;
		if (_alpha > 100)
		{
			_alpha = 100;
		}
		if (_alpha < 0)
		{
			_alpha = 0;
			fightText2.Text = "";
		}
	}
}
