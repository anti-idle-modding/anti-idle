on(release){
   checkUpgrade();
   if(_root.save.arenaEnhancerFragment >= fragCost && _root.save.arenaSuperiorCraft >= scmCost && _root.save.arenaUnobtainium >= unobCost)
   {
      _root.save.arenaEnhancerFragment -= fragCost;
      _root.save.arenaSuperiorCraft -= scmCost;
      _root.save.arenaUnobtainium -= unobCost;
      _root.save.arenaRuneLevel[runeID] += 1;
   }
   checkUpgrade();
   showDesc();
   _parent.checkRuneLevel();
}
