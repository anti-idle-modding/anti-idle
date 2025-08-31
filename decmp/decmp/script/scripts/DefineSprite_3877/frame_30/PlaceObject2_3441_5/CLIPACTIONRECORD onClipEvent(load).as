onClipEvent(load){
   timeLeft = 370;
   if(_root.save.arenaHardcore == true)
   {
      timeLeft += 45;
   }
   if(_root.worstMoon == true)
   {
      timeLeft += 60;
   }
   if(_root.apocalypse == true)
   {
      timeLeft += 15;
   }
   pars = [0,180,270,315,360,410,460,490];
}
