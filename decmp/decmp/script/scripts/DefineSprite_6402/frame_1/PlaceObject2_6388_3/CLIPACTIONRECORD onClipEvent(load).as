onClipEvent(load){
   function reset()
   {
      yspeed = 0;
      _X = 0 + Math.random() * 250 - Math.random() * 250;
      yloc = 500;
      if(power < 20)
      {
         power += 0.1;
      }
      if(power >= 20)
      {
         power = 20;
      }
   }
   power = 5;
   reset();
   maxHint = 10;
   if(_root.save.rankedMode != true)
   {
      maxHint = 10 + _root.save.unrankedPower[9] * 10;
   }
   if(_root.save.arcadeConfig2 != true)
   {
      maxHint = 0;
   }
}
