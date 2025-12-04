using System;
using System.Collections.Generic;
using AntiIdle.BattleArena.Crafting;
using Godot;

// MATCH: DefineSprite_5389-frame_2-DoAction.as
public partial class PopScreen : SceneManager
{
    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        _root.arenaSwap1 = 0;
        _root.enhancerToUse = 0;
        _root.toCheck = true;
        _root.gCheck = true;
        _root.toCheckDel = 0;
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
        if (_root.toCheck == true)
        {
            _root.toCheckDel += 1;
            if (_root.toCheckDel > 3)
            {
                _root.toCheckDel = 0;
                _root.toCheck = false;
            }
        }
        if (this.GetArena()._currentframe != 1)
        {
            _root.toCheck = true;
        }
    }

    // MATCH: DefineSprite_5389-frame_2-DoAction.as:autoSort()
    public void autoSort()
    {
        var VAL = new List<double>();
        double VTEMP = 0;
        if (_root.invTab == 0)
        {
            var i = 1;
            while (i <= 30)
            {
                VAL[i] = 9999999999;
                if (_root.save.inventoryExist[i] == 1)
                {
                    VAL[i] = 100000;
                    VAL[i] += _root.save.inventoryBonusPow[i];
                    if (VAL[i] > 109999)
                    {
                        VAL[i] = 109999;
                    }
                    VAL[i] += _root.save.inventoryFrame[i] * 10000;
                    if (_root.save.inventoryRange[i] == true)
                    {
                        VAL[i] += 100000000;
                    }
                }
                i++;
            }
            i = 1;
            while (i <= 29)
            {
                var k = i + 1;
                while (k <= 30)
                {
                    if (
                        _root.save.arenaWeapon != i
                        && _root.save.arenaWeapon != k
                        && _root.save.arenaSubWeapon != i
                        && _root.save.arenaSubWeapon != k
                    )
                    {
                        if (VAL[i] > VAL[k])
                        {
                            VTEMP = VAL[i];
                            VAL[i] = VAL[k];
                            VAL[k] = VTEMP;
                            _root.swapArenaItem(i, k);
                        }
                    }
                    k++;
                }
                i++;
            }
        }
        else if (_root.invTab == 1)
        {
            var i = 101;
            while (i <= 130)
            {
                VAL[i] = 9999999999;
                if (_root.save.inventoryExist[i] == 1)
                {
                    VAL[i] = 100000;
                    VAL[i] += _root.save.inventoryBonusPow[i];
                    if (VAL[i] > 109999)
                    {
                        VAL[i] = 109999;
                    }
                    VAL[i] += _root.save.inventoryFrame[i] * 10000;
                    if (_root.save.inventorySubtype[i] == "Hat")
                    {
                        VAL[i] += 100000000;
                    }
                    else if (_root.save.inventorySubtype[i] == "Shirt")
                    {
                        VAL[i] += 200000000;
                    }
                    else if (_root.save.inventorySubtype[i] == "Gloves")
                    {
                        VAL[i] += 300000000;
                    }
                    else if (_root.save.inventorySubtype[i] == "Pants")
                    {
                        VAL[i] += 400000000;
                    }
                    else if (_root.save.inventorySubtype[i] == "Shoes")
                    {
                        VAL[i] += 500000000;
                    }
                    else if (_root.save.inventorySubtype[i] == "Skin")
                    {
                        VAL[i] += 600000000;
                    }
                }
                i++;
            }
            i = 101;
            while (i <= 129)
            {
                var k = i + 1;
                while (k <= 130)
                {
                    if (
                        _root.save.arenaHat != i
                        && _root.save.arenaHat != k
                        && _root.save.arenaShirt != i
                        && _root.save.arenaShirt != k
                        && _root.save.arenaGloves != i
                        && _root.save.arenaGloves != k
                        && _root.save.arenaPants != i
                        && _root.save.arenaPants != k
                        && _root.save.arenaShoes != i
                        && _root.save.arenaShoes != k
                        && _root.save.arenaSkin != i
                        && _root.save.arenaSkin != k
                    )
                    {
                        if (VAL[i] > VAL[k])
                        {
                            VTEMP = VAL[i];
                            VAL[i] = VAL[k];
                            VAL[k] = VTEMP;
                            _root.swapArenaItem(i, k);
                        }
                    }
                    k++;
                }
                i++;
            }
        }
        else if (_root.invTab == 5)
        {
            var i = 501;
            while (i <= 530)
            {
                VAL[i] = 9999999999;
                if (_root.save.inventoryExist[i] == 1)
                {
                    VAL[i] = 100000;
                    VAL[i] += _root.save.inventoryBonusPow[i];
                    if (VAL[i] > 109999)
                    {
                        VAL[i] = 109999;
                    }
                    VAL[i] += _root.save.inventoryFrame[i] * 10000;
                    if (_root.save.inventorySubtype[i] == "Medal")
                    {
                        VAL[i] += 100000000;
                    }
                    else if (_root.save.inventorySubtype[i] == "Pendant")
                    {
                        VAL[i] += 200000000;
                    }
                    else if (_root.save.inventorySubtype[i] == "Earring")
                    {
                        VAL[i] += 300000000;
                    }
                    else if (_root.save.inventorySubtype[i] == "Trinket")
                    {
                        VAL[i] += 400000000;
                    }
                }
                i++;
            }
            i = 501;
            while (i <= 529)
            {
                var k = i + 1;
                while (k <= 530)
                {
                    if (
                        _root.save.arenaMedal != i
                        && _root.save.arenaMedal != k
                        && _root.save.arenaPendant != i
                        && _root.save.arenaPendant != k
                        && _root.save.arenaEarring != i
                        && _root.save.arenaEarring != k
                        && _root.save.arenaTrinket != i
                        && _root.save.arenaTrinket != k
                    )
                    {
                        if (VAL[i] > VAL[k])
                        {
                            VTEMP = VAL[i];
                            VAL[i] = VAL[k];
                            VAL[k] = VTEMP;
                            _root.swapArenaItem(i, k);
                        }
                    }
                    k++;
                }
                i++;
            }
        }
        else if (_root.invTab == 2)
        {
            var i = 201;
            while (i <= 230)
            {
                VAL[i] = 9999999999;
                if (_root.save.inventoryExist[i] == 1)
                {
                    VAL[i] = 100000;
                    VAL[i] += _root.save.inventoryBonusPow[i];
                    if (VAL[i] > 109999)
                    {
                        VAL[i] = 109999;
                    }
                    VAL[i] += _root.save.inventoryFrame[i] * 10000;
                }
                i++;
            }
            i = 201;
            while (i <= 229)
            {
                var k = i + 1;
                while (k <= 230)
                {
                    if (VAL[i] > VAL[k])
                    {
                        VTEMP = VAL[i];
                        VAL[i] = VAL[k];
                        VAL[k] = VTEMP;
                        _root.swapArenaItem(i, k);
                    }
                    k++;
                }
                i++;
            }
        }
        else if (_root.invTab == 4)
        {
            var i = 401;
            while (i <= 430)
            {
                VAL[i] = 9999999999;
                if (_root.save.inventoryExist[i] == 1)
                {
                    VAL[i] = 100000;
                    VAL[i] += _root.save.inventoryDefense[i];
                    if (VAL[i] > 109999)
                    {
                        VAL[i] = 109999;
                    }
                    VAL[i] += _root.save.inventoryFrame[i] * 10000;
                }
                i++;
            }
            i = 401;
            while (i <= 429)
            {
                var k = i + 1;
                while (k <= 430)
                {
                    if (VAL[i] > VAL[k])
                    {
                        VTEMP = VAL[i];
                        VAL[i] = VAL[k];
                        VAL[k] = VTEMP;
                        _root.swapArenaItem(i, k);
                    }
                    k++;
                }
                i++;
            }
        }
        else if (_root.invTab == 6)
        {
            var i = 601;
            while (i <= 630)
            {
                VAL[i] = 9999999999;
                if (_root.save.inventoryExist[i] == 1)
                {
                    VAL[i] = 1000000;
                    VAL[i] += _root.save.inventoryBonusPow[i] * 10000;
                    VAL[i] += _root.save.inventoryFrame[i];
                }
                i++;
            }
            i = 601;
            while (i <= 629)
            {
                var k = i + 1;
                while (k <= 630)
                {
                    if (
                        _root.save.arenaOutfitHat != i
                        && _root.save.arenaOutfitHat != k
                        && _root.save.arenaOutfitShirt != i
                        && _root.save.arenaOutfitShirt != k
                        && _root.save.arenaOutfitGloves != i
                        && _root.save.arenaOutfitGloves != k
                        && _root.save.arenaOutfitPants != i
                        && _root.save.arenaOutfitPants != k
                        && _root.save.arenaOutfitShoes != i
                        && _root.save.arenaOutfitShoes != k
                        && _root.save.arenaOutfitSkin != i
                        && _root.save.arenaOutfitSkin != k
                        && _root.save.arenaOutfitEarring != i
                        && _root.save.arenaOutfitEarring != k
                        && _root.save.arenaOutfitMedal != i
                        && _root.save.arenaOutfitMedal != k
                    )
                    {
                        if (VAL[i] > VAL[k])
                        {
                            VTEMP = VAL[i];
                            VAL[i] = VAL[k];
                            VAL[k] = VTEMP;
                            _root.swapArenaItem(i, k);
                        }
                    }
                    k++;
                }
                i++;
            }
        }
        else if (_root.invTab == 7)
        {
            var i = 701;
            while (i <= 730)
            {
                VAL[i] = 9999999999;
                if (_root.save.inventoryExist[i] == 1)
                {
                    VAL[i] = 1000000;
                    VAL[i] -= _root.save.inventoryBonusPow[i] * 1000;
                    VAL[i] += _root.save.inventoryAttack[i];
                }
                i++;
            }
            i = 701;
            while (i <= 729)
            {
                var k = i + 1;
                while (k <= 730)
                {
                    if (VAL[i] > VAL[k])
                    {
                        VTEMP = VAL[i];
                        VAL[i] = VAL[k];
                        VAL[k] = VTEMP;
                        _root.swapArenaItem(i, k);
                    }
                    k++;
                }
                i++;
            }
        }
        _root.toCheck = true;
        _root.gCheck = true;
    }
}
