on(release){
   if(_root.save.arenaPixel >= cost)
   {
      _root.save.arenaPixel -= cost;
      _root.save.arenaAttack += 500;
      updateStat();
      _root.actiondescription = "Increase base Attack Power by 500\nCost: <font color=\'#FFFF00\'>" + _root.withComma(cost) + "</font> Pixels";
   }
}
