onClipEvent(enterFrame){
   slowDur -= 0.025;
   stunDur -= 0.025;
   darkDur -= 0.025;
   fastDur -= 0.025;
   if(_root.stadiumTimer >= 0)
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
                  energy -= 10;
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
                  energy -= 10;
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
         friction = 0.9;
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
      if(xspeed < 0.05 && xspeed > -0.05)
      {
         xspeed = 0;
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
   }
}
