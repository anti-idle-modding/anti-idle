using System;
using System.Runtime.Intrinsics.X86;
using Godot;
using OneOf.Types;
using static System.Runtime.InteropServices.JavaScript.JSType;
using Math = AntiIdle.Common.Flash.Math;

// MATCH: DefineSprite_10348-frame_1-DoAction.as
public partial class InfoPopup : Control
{
    public float adX { get; set; }
    public float adY { get; set; }
    public bool adL { get; set; }
    public bool alt { get; set; }
    public float tX { get; set; }
    public float tY { get; set; }
    public int fr { get; set; }
    public int _currentframe { get; set; }

    [Export]
    public Ad ad { get; set; }

    // fr1 = blue + red
    // fr2 = blue
    // fr3 = hidden

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        _root.actiondescription = "";
        _root.actiondescription2 = "";
        ad.gotoAndStop(3);
        alt = false;
        adX = this._X;
        adY = this._Y;
        adL = false;
        checkMouse();
        checkDesc();
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
        checkMouse();
        alt = !alt;
        if (alt == true)
        {
            checkDesc();
        }
    }

    // MATCH: DefineSprite_10348-frame_1-DoAction.as:checkMouse()
    public void checkMouse()
    {
        tX = (float)Math.round(_root._xmouse);
        tY = (float)Math.round(_root._ymouse);
        if (this._X != tX || this._Y != tY)
        {
            if (tX > 0 && tX < 650 && tY > 0 && tY < 670)
            {
                if (_root.cursoridle < 600)
                {
                    _root.cursoridle = 0;
                }
                this._X = tX;
                this._Y = tY;
            }
        }
    }

    // MATCH: DefineSprite_10348-frame_1-DoAction.as:checkDesc()
    public void checkDesc()
    {
        if (_root.actiondescription2 == "")
        {
            if (this._X > 450)
            {
                adX = -190;
            }
            else
            {
                adX = 15;
            }
        }
        else if (this._X > 450)
        {
            adX = -190;
            adL = true;
        }
        else if (this._X > 260)
        {
            adX = 15;
            adL = true;
        }
        else
        {
            adX = 15;
            adL = false;
        }
        if (ad._height > 0)
        {
            if (this._Y > ad._height)
            {
                adY = -1 * ad._height;
            }
            else
            {
                adY = 15;
            }
        }
        if (adY > 650 - tY - ad._height)
        {
            adY = 650 - tY - ad._height;
        }
        ad._x = adX;
        ad._y = adY;
        if (_root.actiondescription2 != "")
        {
            fr = 1;
        }
        else if (_root.actiondescription != "")
        {
            fr = 2;
        }
        else if (_root.actiondescription == "" && _currentframe != 3)
        {
            fr = 3;
        }
        if (ad._currentframe != fr)
        {
            ad.gotoAndStop(fr);
        }
        if (fr != 3)
        {
            if (ad.textBox.Text != _root.actiondescription)
            {
                ad.textBox.htmlText = _root.actiondescription;
                ad.textBox.autoSize = true;
                ad.bgBox._height = ad.textBox._height;
            }
            if (fr == 1 && ad.textBox2.htmlText != _root.actiondescription2)
            {
                ad.textBox2.htmlText = _root.actiondescription2;
                ad.textBox2.autoSize = true;
                ad.bgBox2._height = ad.textBox2._height;
            }
        }
        if (fr == 1)
        {
            if (adL == true)
            {
                ad.bgBox2._x = -191;
                ad.textBox2._x = -191;
            }
            else
            {
                ad.bgBox2._x = 191;
                ad.textBox2._x = 191;
            }
        }
    }
}
