onClipEvent(load){
   function updateStat()
   {
      cost = Math.floor(Math.pow(_root.save.arenaMaxMana / 4,1.3) * 0.125) * 400;
      if(_root.save.arenaMaxMana >= 260000 || _root.save.bannedB >= 1)
      {
         cost = Infinity;
      }
      if(_root.save.arenaPixel >= cost)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   updateStat();
}
