on(release){
   if(_root.dungeonRoom == 36)
   {
      _root.save.arenaZone = 0;
      _root.arenaCombo = 0;
   }
   else if(ok == 1 && _parent.diag >= 2)
   {
      _parent.diag = 0;
      _root.dungeonRoom += 6;
      _root.house.arena.enemy.approach = 4;
      ok = 0;
   }
}
