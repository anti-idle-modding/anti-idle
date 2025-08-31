onClipEvent(load){
   timeLeft = 610;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft += 45;
   }
   if(_root.worstMoon == true)
   {
      timeLeft += 75;
   }
   if(_root.apocalypse == true)
   {
      timeLeft += 20;
   }
   if(_root.raidDiff == 3)
   {
      timeLeft += 200;
   }
   pars = [0,120,240,360,420,480,540,600,630,660,680,700,800,850,880,900,950,9999];
}
