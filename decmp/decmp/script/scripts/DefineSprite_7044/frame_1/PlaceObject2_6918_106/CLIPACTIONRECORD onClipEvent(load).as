onClipEvent(load){
   kongName = _root.kongregate_username;
   if(kongName == undefined || kongName == "Guest")
   {
      kongName = _root.save.displayName;
   }
   nameText.text = kongName;
   curItem = "";
   slowDur = 0;
   stunDur = 0;
   darkDur = 0;
   fastDur = 0;
   jumpDel = 0;
   dashDelL = 0;
   dashDelR = 0;
   energy = 100 + _root.save.stadiumEnergy;
   maxEnergy = 100 + _root.save.stadiumEnergy;
   power = 0.5 + _root.save.stadiumAccel * 0.005;
   maxspeed = 10 + _root.save.stadiumMaxSpeed * 0.1;
   jump = 8.5 + _root.save.stadiumJump * 0.04;
   dash = 3 + _root.save.stadiumDash * 0.1;
   boost = 5 + _root.save.stadiumBoost * 0.15;
   xspeed = 0 + _root.save.stadiumStartSpeed * 0.5;
   if(_root.save.stadiumHat == 2)
   {
      power += 0.025;
      maxspeed += 0.5;
   }
   if(_root.save.stadiumHat == 3)
   {
      xspeed += 2.5;
      dash += 0.5;
      boost += 0.025;
   }
   if(_root.save.stadiumHat == 4)
   {
      energy += 15;
      maxEnergy += 15;
   }
   if(_root.save.stadiumHat == 5)
   {
      jump += 0.4;
   }
   if(_root.save.stadiumHat == 6)
   {
      power += 0.075;
      maxspeed += 0.5;
      dash += 0.5;
   }
   if(_root.save.stadiumHat == 8)
   {
      maxspeed += 0.5;
      jump += 0.4;
   }
   if(_root.save.stadiumHat == 9)
   {
      energy += 2;
      maxEnergy += 2;
      power += 0.01;
      maxspeed += 0.2;
      jump += 0.08;
      dash += 0.2;
      boost += 0.01;
      xspeed += 1;
   }
   if(_root.save.stadiumHat == 10)
   {
      energy += 5;
      maxEnergy += 5;
      power += 0.025;
      maxspeed += 0.5;
      jump += 0.2;
      dash += 0.5;
      boost += 0.025;
      xspeed += 2.5;
   }
   if(_root.save.stadiumHat == 11)
   {
      energy += 10;
      maxEnergy += 10;
      power += 0.05;
      maxspeed += 1;
      jump += 0.4;
      dash += 1;
      boost += 0.05;
      xspeed += 5;
   }
   if(dash < 5)
   {
      dash = 5;
   }
   if(boost < 1.25)
   {
      boost = 1.25;
   }
   yspeed = 0;
   holdL = false;
   holdR = false;
}
