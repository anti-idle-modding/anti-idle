onClipEvent(enterFrame){
   slowDur -= 0.025;
   fastDur -= 0.025;
   stunDur -= 0.025;
   if(darkDur > 0)
   {
      darkDur -= 0.025;
   }
   if(_root.stadiumTimer >= 0 && health > 0)
   {
      if(energy < maxEnergy)
      {
         energy += 0.2;
         if(_root.save.restTime > 0)
         {
            energy += 0.2 * (0.1 + _root.save.restEfficiency[8] * 0.01);
         }
         if(_root.save.careerLevel[7] >= 200)
         {
            energy += 0.06;
         }
         if(energy > maxEnergy)
         {
            energy = maxEnergy;
         }
      }
      if(stunDur <= 0)
      {
         if(Key.isDown(37) || Key.isDown(65))
         {
            if(xspeed > maxspeed * -1)
            {
               dashDelL += 1;
               pti = power;
               if(pti > maxspeed + xspeed)
               {
                  pti = maxspeed + xspeed;
               }
               if(pti < 0)
               {
                  pti = 0;
               }
               xspeed -= pti;
               if(holdL != true && energy >= 10 && dashDelL >= 1)
               {
                  energy -= 2;
                  xspeed -= dash;
               }
               holdL = true;
            }
         }
         else
         {
            holdL = false;
         }
         if(Key.isDown(39) || Key.isDown(68))
         {
            if(xspeed < maxspeed)
            {
               dashDelR += 1;
               pti = power;
               if(pti > maxspeed - xspeed)
               {
                  pti = maxspeed - xspeed;
               }
               if(pti < 0)
               {
                  pti = 0;
               }
               xspeed += pti;
               if(holdR != true && energy >= 10 && dashDelR >= 1)
               {
                  xspeed += dash;
                  energy -= 2;
               }
               holdR = true;
            }
         }
         else
         {
            holdR = false;
         }
         if(Key.isDown(38) || Key.isDown(87))
         {
            if(jumpDel >= 2)
            {
               yspeed -= jump;
            }
         }
      }
      _root.stadiumSpeedDisp = Math.abs(Math.round(xspeed * 10));
      _root.stadiumEnergyDisp = Math.round(energy);
      _X = _X + xspeed;
      _Y = _Y + yspeed;
      friction = 0.96;
      if(slowDur > 0)
      {
         friction = 0.92;
      }
      if(fastDur > 0)
      {
         friction = 0.97;
      }
      if(Key.isDown(16))
      {
         friction = 0.9;
      }
      if(yspeed == 0)
      {
         jumpDel += 1;
      }
      else
      {
         jumpDel = 0;
      }
      if(xspeed >= -1)
      {
         dashDelL = 0;
      }
      if(xspeed <= 1)
      {
         dashDelR = 0;
      }
      xspeed *= friction;
      if(xspeed > 50)
      {
         xspeed = 50;
      }
      if(xspeed < -50)
      {
         xspeed = -50;
      }
      if(_Y < -50)
      {
         yspeed += 0.5;
      }
      if(_Y > -50)
      {
         _Y = -50;
         yspeed = 0;
      }
      if(Key.isDown(32))
      {
         _parent.useItem(curItem,0);
      }
      if(Key.isDown(90) && keyDecided == 0)
      {
         keyDecided = 90;
      }
      if(Key.isDown(89) && keyDecided == 0)
      {
         keyDecided = 89;
      }
      if(Key.isDown(keyDecided))
      {
         if(holdCtrl != true && stunDur <= 0 && energy >= 5 && _root.stadiumTimer <= 420)
         {
            holdCtrl = true;
            energy -= 5;
            k = 1;
            while(k <= 4)
            {
               dist = Math.abs(_parent["stadiumEnemy" + k]._x - _X);
               if(dist <= 250 - darkDur * 30 && _parent["stadiumEnemy" + k].health > 0)
               {
                  score += 1;
                  _parent["stadiumEnemy" + k].health -= 1;
                  if(_parent["stadiumEnemy" + k].health <= 0)
                  {
                     if(_root.save.questType == "Death Match")
                     {
                        if(_root.save.questSubtype == "KO")
                        {
                           _root.save.questCount += 1;
                        }
                     }
                     _root.gainBoost(500,3);
                     _root.dispNews(101,mehName + " defeated " + _parent["stadiumEnemy" + k].mehName + "! (+500% Boost)");
                     score += Math.floor(_parent["stadiumEnemy" + k].score / 10) + 30;
                     _parent["stadiumEnemy" + k].score -= Math.floor(_parent["stadiumEnemy" + k].score / 10);
                     _parent._parent.ko._alpha = 100;
                     _root.gainBlueCoin(25);
                     pac = 0;
                  }
                  _root.incDt();
                  _parent.attachMovie("stadiumPop","stadiumPop" + _root.summonCount,_root.antiLag,{_x:_parent["stadiumEnemy" + k]._x + 25,_y:_parent["stadiumEnemy" + k]._y - 25,damager:0});
               }
               k++;
            }
         }
      }
      else
      {
         holdCtrl = false;
      }
   }
   if(revive > 400)
   {
      revive = 0;
      health = 100;
      _alpha = 100;
   }
   else if(health <= 0)
   {
      darkDur = 3;
      if(revive == 0)
      {
         noDeath = 0;
         messID = random(5) + 1;
         if(messID == 1)
         {
            _parent._parent.breakStadium(mehName + " has been destroyed, LOL!");
         }
         if(messID == 2)
         {
            _parent._parent.breakStadium(mehName + " has run out of health!");
         }
         if(messID == 3)
         {
            _parent._parent.breakStadium(mehName + " suddenly disappeared!");
         }
         if(messID == 4)
         {
            _parent._parent.breakStadium(mehName + " has been PWNed!");
         }
         if(messID == 5)
         {
            _parent._parent.breakStadium("All ur " + mehName + " r belong to us!");
         }
      }
      revive += 0.5;
      health = 0;
      _alpha = 0;
   }
   else
   {
      revive = 0;
   }
}
