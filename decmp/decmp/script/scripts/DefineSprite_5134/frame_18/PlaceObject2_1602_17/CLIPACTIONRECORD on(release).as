on(release){
   if(_root.save.arenaHardcore == true && _root.apocalypse == true)
   {
      _root.raidDiff = 3;
      _root.house.arena.travel(31);
      _parent.gotoAndStop(1);
   }
}
