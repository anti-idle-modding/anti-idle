on(release){
   if(_root.save.arenaDefendMega >= 1)
   {
      _root.raidDiff = 1;
      _root.house.arena.travel(24);
      _parent.gotoAndStop(1);
   }
}
