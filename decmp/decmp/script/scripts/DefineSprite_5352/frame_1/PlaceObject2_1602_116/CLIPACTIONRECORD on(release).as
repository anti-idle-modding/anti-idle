on(release){
   if(_root.save.arenaPixel >= cost)
   {
      _root.save.arenaPixel -= cost;
      _root.save.arenaMaxMana += 2000;
      updateStat();
      _root.actiondescription = "Increase base MaxMP by 2,000\nCost: <font color=\'#FFFF00\'>" + _root.withComma(cost) + "</font> Pixels";
   }
}
