onClipEvent(load){
   timeLeft = 430;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft += 120;
   }
   if(_root.worstMoon == true)
   {
      timeLeft += 220;
   }
   if(_root.apocalypse == true)
   {
      timeLeft += 190;
   }
   if(_root.raidDiff == 1)
   {
      timeLeft -= 60;
   }
   if(_root.raidDiff == 3)
   {
      timeLeft += 840;
   }
   pars = [0,60,150,240,300,360,420,480,540,600,660,780,960,1200,1320,1440,1800,9999];
}
