onClipEvent(enterFrame){
   del += 1;
   if(del >= 20)
   {
      del = 0;
      if(_root.save.arenaMana < Math.floor(_root.maxMana / 2) && _root.save.arenaMana < 2000)
      {
         flashing = true;
      }
      else if(_alpha == 0)
      {
         flashing = false;
      }
      if(flashing == true)
      {
         time += 1;
         if(time >= 1)
         {
            _alpha = 100;
         }
         if(time >= 2)
         {
            _alpha = 0;
            time = 0;
         }
      }
   }
}
