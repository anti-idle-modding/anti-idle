onClipEvent(load){
   timeLeft = 610;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft += 90;
   }
   if(_root.worstMoon == true)
   {
      timeLeft += 120;
   }
   if(_root.apocalypse == true)
   {
      timeLeft += 30;
   }
   baseTime = timeLeft - 11;
   autoKick = true;
   destination = 44;
}
