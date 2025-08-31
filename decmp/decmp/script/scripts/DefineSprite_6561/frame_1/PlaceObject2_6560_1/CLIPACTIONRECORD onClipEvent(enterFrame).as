onClipEvent(enterFrame){
   if(_root["tile" + tilex + "_" + tiley + "A"] == true && (_currentframe == 1 || _currentframe == 8))
   {
      revealTile();
   }
   if(_root["tile" + tilex + "_" + tiley + "S"] == true && (_currentframe == 1 || _currentframe == 8) && tiletype != 3)
   {
      revealTile();
   }
   if(_root["tile" + tilex + "_" + tiley + "B"] == true && (_currentframe == 1 || _currentframe == 8) && tiletype == 3)
   {
      revealTile();
   }
   if(_root["tile" + tilex + "_" + tiley + "ToArrow"] == true && tiletype != 4)
   {
      changeToArrowTile();
   }
   if(_root["tile" + tilex + "_" + tiley + "ToNumber"] == true && tiletype != 5)
   {
      changeToNumberTile();
   }
   if(_parent._parent.mindMonster == true)
   {
      if(_root["tile" + tilex + "_" + tiley + "R"] == 1 && _currentframe == 3)
      {
         nearbyX = 0;
         if(_root["tile" + (tilex - 1) + "_" + (tiley - 1)] != 3 && _root["tile" + (tilex - 1) + "_" + (tiley - 1)] != undefined && _root["tile" + (tilex - 1) + "_" + (tiley - 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + (tilex - 1) + "_" + tiley] != 3 && _root["tile" + (tilex - 1) + "_" + tiley] != undefined && _root["tile" + (tilex - 1) + "_" + tiley + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + (tilex - 1) + "_" + (tiley + 1)] != 3 && _root["tile" + (tilex - 1) + "_" + (tiley + 1)] != undefined && _root["tile" + (tilex - 1) + "_" + (tiley + 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + tilex + "_" + (tiley - 1)] != 3 && _root["tile" + tilex + "_" + (tiley - 1)] != undefined && _root["tile" + tilex + "_" + (tiley - 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + tilex + "_" + (tiley + 1)] != 3 && _root["tile" + tilex + "_" + (tiley + 1)] != undefined && _root["tile" + tilex + "_" + (tiley + 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + (tiley - 1)] != 3 && _root["tile" + (tilex + 1) + "_" + (tiley - 1)] != undefined && _root["tile" + (tilex + 1) + "_" + (tiley - 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + tiley] != 3 && _root["tile" + (tilex + 1) + "_" + tiley] != undefined && _root["tile" + (tilex + 1) + "_" + tiley + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + (tiley + 1)] != 3 && _root["tile" + (tilex + 1) + "_" + (tiley + 1)] != undefined && _root["tile" + (tilex + 1) + "_" + (tiley + 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(nearbyX >= nearby)
         {
            _root["tile" + (tilex - 1) + "_" + (tiley - 1) + "F"] = 1;
            _root["tile" + (tilex - 1) + "_" + tiley + "F"] = 1;
            _root["tile" + (tilex - 1) + "_" + (tiley + 1) + "F"] = 1;
            _root["tile" + tilex + "_" + (tiley - 1) + "F"] = 1;
            _root["tile" + tilex + "_" + (tiley + 1) + "F"] = 1;
            _root["tile" + (tilex + 1) + "_" + (tiley - 1) + "F"] = 1;
            _root["tile" + (tilex + 1) + "_" + tiley + "F"] = 1;
            _root["tile" + (tilex + 1) + "_" + (tiley + 1) + "F"] = 1;
         }
      }
      if(_root["tile" + tilex + "_" + tiley + "R"] == 1 && _currentframe == 1)
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
         else if(_root.treasurerevealed >= Math.round(7 + _root.arcadeMultiplier / 5) && tiletype != 2 && tiletype != 3 && _root.redrevealed != true)
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
            X = 0;
            while(X <= 19)
            {
               Y = 0;
               while(Y <= 9)
               {
                  dist = Math.abs(X - tilex) + Math.abs(Y - tiley);
                  if(dist != distance)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                  }
                  Y++;
               }
               X++;
            }
            _root.arcadeScore += 200 * _root.arcadeMultiplier;
         }
         else if(_root.treasurerevealed >= Math.round(7 + _root.arcadeMultiplier / 5) && _root.treasurerevealed % 4 == 0 && tiletype == 6)
         {
            if(_root.treasurerevealed % 8 == 0)
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
            _root.arcadeTurns += 2;
            _root.arcadeScore += (1000 + _root.save.arcadeDifficulty[5] * 500) * _root.arcadeMultiplier;
            _root.mindMonsterFound = 1;
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
            X = 0;
            while(X <= 19)
            {
               Y = 0;
               while(Y <= 9)
               {
                  dist = Math.abs(X - tilex) + Math.abs(Y - tiley);
                  if(dist != distance)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                  }
                  Y++;
               }
               X++;
            }
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
         }
         _root.treasurerevealed += 1;
         gotoAndStop(tiletype);
         _root.arcadeTurns -= 1;
         if(_currentframe != 8)
         {
            _root.focusx = tilex;
            _root.focusy = tiley;
            _root.focusTiletype = tiletype;
            if(tiletype == 5)
            {
               _root.focusDist = distance;
            }
         }
      }
      else if(_root["tile" + tilex + "_" + tiley + "F"] == 1 && _root["tile" + tilex + "_" + tiley + "R"] == 0)
      {
         gotoAndStop(8);
      }
   }
}
