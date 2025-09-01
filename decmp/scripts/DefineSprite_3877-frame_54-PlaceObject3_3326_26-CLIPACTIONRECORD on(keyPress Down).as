on(keyPress "<Down>"){
   if(ok == 1 && _root.dungeonRoom != 36 && _parent.diag >= 2)
   {
      _parent.diag = 0;
      _root.dungeonRoom += 6;
      _root.house.arena.enemy.approach = 4;
      ok = 0;
   }
}
