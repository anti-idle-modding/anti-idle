onClipEvent(load){
   frame = 1;
   time = 0;
   del = 0;
   if(_root.save.rankedMode != true)
   {
      del = _root.save.unrankedPower[16] * 2;
   }
   if(_root.save.arcadeDifficulty[4] <= 1)
   {
      appearChance = 0.04;
      if(_parent._x < 160 || _parent._x > 320 || _parent._y < 40 || _parent._y > 200)
      {
         appearChance = 0.002;
      }
      wcChance = 0.02;
      gregChance = 0.9;
      fakeAwesomeChance = 0;
   }
   else if(_root.save.arcadeDifficulty[4] <= 2)
   {
      appearChance = 0.03;
      wcChance = 0.03;
      gregChance = 0.75;
      fakeAwesomeChance = 0;
   }
   else if(_root.save.arcadeDifficulty[4] <= 3)
   {
      appearChance = 0.05;
      wcChance = 0.02;
      gregChance = 0.6;
      fakeAwesomeChance = 0;
   }
   else
   {
      appearChance = 0.07;
      wcChance = 0.015;
      gregChance = 0.5;
      fakeAwesomeChance = 0.25;
   }
}
