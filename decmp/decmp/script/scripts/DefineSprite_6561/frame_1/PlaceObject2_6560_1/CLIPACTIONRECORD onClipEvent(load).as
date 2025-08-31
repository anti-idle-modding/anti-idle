onClipEvent(load){
   function revealTile()
   {
      if(_root.treasurerevealed < 1 && tiletype != 2)
      {
         tiletype = 4;
         _root["tile" + tilex + "_" + tiley] = tiletype;
         if(_root.keyx < tilex)
         {
            directionx = "LEFT";
         }
         else if(_root.keyx > tilex)
         {
            directionx = "RIGHT";
         }
         directiony = "N/A";
         if(_root.keyy < tiley)
         {
            directiony = "UP";
         }
         if(_root.keyy > tiley)
         {
            directiony = "DOWN";
         }
         if(directionx == "N/A")
         {
            if(directiony == "UP")
            {
               rotat = 0;
            }
            if(directiony == "DOWN")
            {
               rotat = 180;
            }
         }
         else if(directiony == "N/A")
         {
            if(directionx == "LEFT")
            {
               rotat = 270;
            }
            if(directionx == "RIGHT")
            {
               rotat = 90;
            }
         }
         else if(Math.random() < 0.5)
         {
            if(directiony == "UP")
            {
               rotat = 0;
            }
            if(directiony == "DOWN")
            {
               rotat = 180;
            }
         }
         else
         {
            if(directionx == "LEFT")
            {
               rotat = 270;
            }
            if(directionx == "RIGHT")
            {
               rotat = 90;
            }
         }
         _root.arcadeScore += 200 * _root.arcadeMultiplier;
         if(_root.save.arcadeDifficulty[5] == 1)
         {
            w = 1;
            while(w <= 15 - _root.arcadeMultiplier / 8)
            {
               tmpTilex = random(20);
               tmpTiley = random(10);
               _root["tile" + tmpTilex + "_" + tmpTiley + "B"] = true;
               w++;
            }
         }
      }
      else if(_root.treasurerevealed >= Math.round(3 + _root.arcadeMultiplier / 3) && tiletype != 2 && tiletype != 3 && _root.redrevealed != true)
      {
         _root.redrevealed = true;
         tiletype = 5;
         xdiff = _root.keyx - tilex;
         if(xdiff < 0)
         {
            xdiff = - xdiff;
         }
         ydiff = _root.keyy - tiley;
         if(ydiff < 0)
         {
            ydiff = - ydiff;
         }
         distance = xdiff + ydiff;
         _root.arcadeScore += 200 * _root.arcadeMultiplier;
      }
      else if(_root.treasurerevealed >= Math.round(3 + _root.arcadeMultiplier / 3) && _root.treasurerevealed % 5 == 0 && tiletype == 6)
      {
         if(_root.treasurerevealed % 10 == 0)
         {
            tiletype = 4;
            _root["tile" + tilex + "_" + tiley] = tiletype;
            if(_root.keyx < tilex)
            {
               directionx = "LEFT";
            }
            else if(_root.keyx > tilex)
            {
               directionx = "RIGHT";
            }
            directiony = "N/A";
            if(_root.keyy < tiley)
            {
               directiony = "UP";
            }
            if(_root.keyy > tiley)
            {
               directiony = "DOWN";
            }
            if(directionx == "N/A")
            {
               if(directiony == "UP")
               {
                  rotat = 0;
               }
               if(directiony == "DOWN")
               {
                  rotat = 180;
               }
            }
            else if(directiony == "N/A")
            {
               if(directionx == "LEFT")
               {
                  rotat = 270;
               }
               if(directionx == "RIGHT")
               {
                  rotat = 90;
               }
            }
            else if(Math.random() < 0.5)
            {
               if(directiony == "UP")
               {
                  rotat = 0;
               }
               if(directiony == "DOWN")
               {
                  rotat = 180;
               }
            }
            else
            {
               if(directionx == "LEFT")
               {
                  rotat = 270;
               }
               if(directionx == "RIGHT")
               {
                  rotat = 90;
               }
            }
            if(rotat == 0)
            {
               X = 0;
               while(X <= 19)
               {
                  Y = tiley;
                  while(Y <= 9)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            if(rotat == 180)
            {
               X = 0;
               while(X <= 19)
               {
                  Y = 0;
                  while(Y <= tiley)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            if(rotat == 270)
            {
               X = tilex;
               while(X <= 19)
               {
                  Y = 0;
                  while(Y <= 9)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            if(rotat == 90)
            {
               X = 0;
               while(X <= tilex)
               {
                  Y = 0;
                  while(Y <= 9)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            _root.arcadeScore += 200 * _root.arcadeMultiplier;
         }
         else
         {
            tiletype = 7;
            _root.arcadeScore += 100 * _root.arcadeMultiplier;
            _root.arcadeTurns += 2;
         }
      }
      else if(tiletype == 2)
      {
         _root.keyrevealed = true;
         _root.arcadeTurns += 2;
         _root.arcadeScore += (1000 + _root.save.arcadeDifficulty[5] * 500) * _root.arcadeMultiplier;
         progToEarn = 500 + _root.arcadeMultiplier * 100;
         _root.progPercent += progToEarn;
         _root.dispNews(89,"[MindSweeper] Goal found! (+" + progToEarn + "% Progress)");
      }
      else if(tiletype == 3)
      {
         nearby = 0;
         if(_root["tile" + (tilex - 1) + "_" + (tiley - 1)] != 3 && _root["tile" + (tilex - 1) + "_" + (tiley - 1)] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + (tilex - 1) + "_" + tiley] != 3 && _root["tile" + (tilex - 1) + "_" + tiley] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + (tilex - 1) + "_" + (tiley + 1)] != 3 && _root["tile" + (tilex - 1) + "_" + (tiley + 1)] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + tilex + "_" + (tiley - 1)] != 3 && _root["tile" + tilex + "_" + (tiley - 1)] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + tilex + "_" + (tiley + 1)] != 3 && _root["tile" + tilex + "_" + (tiley + 1)] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + (tiley - 1)] != 3 && _root["tile" + (tilex + 1) + "_" + (tiley - 1)] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + tiley] != 3 && _root["tile" + (tilex + 1) + "_" + tiley] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + (tiley + 1)] != 3 && _root["tile" + (tilex + 1) + "_" + (tiley + 1)] != undefined)
         {
            nearby += 1;
         }
         _root.arcadeScore += 10 * _root.arcadeMultiplier;
      }
      else if(tiletype == 4)
      {
         if(_root.keyx < tilex)
         {
            directionx = "LEFT";
         }
         else if(_root.keyx > tilex)
         {
            directionx = "RIGHT";
         }
         directiony = "N/A";
         if(_root.keyy < tiley)
         {
            directiony = "UP";
         }
         if(_root.keyy > tiley)
         {
            directiony = "DOWN";
         }
         if(directionx == "N/A")
         {
            if(directiony == "UP")
            {
               rotat = 0;
            }
            if(directiony == "DOWN")
            {
               rotat = 180;
            }
         }
         else if(directiony == "N/A")
         {
            if(directionx == "LEFT")
            {
               rotat = 270;
            }
            if(directionx == "RIGHT")
            {
               rotat = 90;
            }
         }
         else if(Math.random() < 0.5)
         {
            if(directiony == "UP")
            {
               rotat = 0;
            }
            if(directiony == "DOWN")
            {
               rotat = 180;
            }
         }
         else
         {
            if(directionx == "LEFT")
            {
               rotat = 270;
            }
            if(directionx == "RIGHT")
            {
               rotat = 90;
            }
         }
         _root.arcadeScore += 200 * _root.arcadeMultiplier;
      }
      else if(tiletype == 5)
      {
         xdiff = _root.keyx - tilex;
         if(xdiff < 0)
         {
            xdiff = - xdiff;
         }
         ydiff = _root.keyy - tiley;
         if(ydiff < 0)
         {
            ydiff = - ydiff;
         }
         distance = xdiff + ydiff;
         _root.arcadeScore += 200 * _root.arcadeMultiplier;
      }
      else if(tiletype == 6)
      {
         _root.arcadeScore += 100 * _root.arcadeMultiplier;
         _root.arcadeTimeLeft += 5;
      }
      else if(tiletype == 7)
      {
         _root.arcadeScore += 100 * _root.arcadeMultiplier;
         _root.arcadeTurns += 2;
      }
      else if(tiletype == 9)
      {
         _root.arcadeScore += 100 * _root.arcadeMultiplier;
         _root.gainWhiteCoin(1);
      }
      _root.treasurerevealed += 1;
      gotoAndStop(tiletype);
   }
   function changeToArrowTile()
   {
      if(_root.keyx < tilex)
      {
         directionx = "LEFT";
      }
      else if(_root.keyx > tilex)
      {
         directionx = "RIGHT";
      }
      directiony = "N/A";
      if(_root.keyy < tiley)
      {
         directiony = "UP";
      }
      if(_root.keyy > tiley)
      {
         directiony = "DOWN";
      }
      if(directionx == "N/A")
      {
         if(directiony == "UP")
         {
            rotat = 0;
         }
         if(directiony == "DOWN")
         {
            rotat = 180;
         }
      }
      else if(directiony == "N/A")
      {
         if(directionx == "LEFT")
         {
            rotat = 270;
         }
         if(directionx == "RIGHT")
         {
            rotat = 90;
         }
      }
      else if(Math.random() < 0.5)
      {
         if(directiony == "UP")
         {
            rotat = 0;
         }
         if(directiony == "DOWN")
         {
            rotat = 180;
         }
      }
      else
      {
         if(directionx == "LEFT")
         {
            rotat = 270;
         }
         if(directionx == "RIGHT")
         {
            rotat = 90;
         }
      }
      _root.arcadeScore += 200 * _root.arcadeMultiplier;
      tiletype = 4;
      gotoAndStop(4);
      _root.focusTiletype = tiletype;
   }
   function changeToNumberTile()
   {
      xdiff = _root.keyx - tilex;
      if(xdiff < 0)
      {
         xdiff = - xdiff;
      }
      ydiff = _root.keyy - tiley;
      if(ydiff < 0)
      {
         ydiff = - ydiff;
      }
      distance = xdiff + ydiff;
      _root.arcadeScore += 200 * _root.arcadeMultiplier;
      tiletype = 5;
      gotoAndStop(5);
      _root.focusTiletype = tiletype;
      _root.focusDist = distance;
   }
   unrankedMult = 1;
   if(_root.save.rankedMode != true)
   {
      unrankedMult = 1 + _root.save.unrankedPower[27] * 0.04;
   }
   if(_root.save.arcadeDifficulty[5] == 1)
   {
      unrankedMult *= 1.1;
   }
   if(_root.save.arcadeDifficulty[5] == 3)
   {
      unrankedMult *= 0.95;
   }
   if(_root.save.arcadeDifficulty[5] == 4)
   {
      unrankedMult *= 0.9;
   }
   tilex = Math.floor(_parent._x / 24);
   tiley = Math.floor(_parent._y / 24);
   directionx = "N/A";
   tiletype = 3;
   if(Math.random() < 0.02 + _root.arcadeMultiplier * 0.0002 && _root.arcadeMultiplier >= 20)
   {
      tiletype = 9;
   }
   else if(Math.random() < (0.1 + 0.4 / _root.arcadeMultiplier) * unrankedMult)
   {
      tiletype = 4;
   }
   else if(Math.random() < (0.04 + 0.16 / _root.arcadeMultiplier) * unrankedMult)
   {
      tiletype = 5;
   }
   else if(Math.random() < 0.075 - _root.save.arcadeDifficulty[5] * 0.005 + Math.min(_root.arcadeMultiplier,25) * 0.00035)
   {
      tiletype = 6;
   }
   else if(Math.random() < 0.0525 - _root.save.arcadeDifficulty[5] * 0.0025 + Math.min(_root.arcadeMultiplier,25) * 0.00025)
   {
      tiletype = 7;
   }
   if(tilex == _root.keyx && tiley == _root.keyy)
   {
      tiletype = 2;
   }
   _root["tile" + tilex + "_" + tiley] = tiletype;
   _root["tile" + tilex + "_" + tiley + "A"] = false;
   _root["tile" + tilex + "_" + tiley + "S"] = false;
   _root["tile" + tilex + "_" + tiley + "B"] = false;
   _root["tile" + tilex + "_" + tiley + "ToArrow"] = false;
   _root["tile" + tilex + "_" + tiley + "ToNumber"] = false;
}
