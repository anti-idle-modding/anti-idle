on(release){
   if(_root.save.arenaMegabossEntry > 0 && _root.house.arena.enemy.enemyID == 0)
   {
      _root.save.arenaMegabossEntry -= 1;
      _root.house.arena.travel(destination);
   }
}
