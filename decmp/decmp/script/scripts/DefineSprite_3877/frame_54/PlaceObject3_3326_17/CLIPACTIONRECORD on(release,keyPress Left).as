on(release,keyPress "<Left>"){
   if(ok == 1 && _parent.diag >= 2)
   {
      _parent.diag = 0;
      _root.dungeonRoom -= 1;
      _root.house.arena.enemy.approach = 4;
      ok = 0;
   }
}
