on(release){
   if(_root.save.arenaPixel >= cost)
   {
      _root.save.arenaPixel -= cost;
      _root.save.arenaMaxHealth += 5000;
      updateStat();
      _root.actiondescription = "Increase base MaxHP by 5,000\nCost: <font color=\'#FFFF00\'>" + _root.withComma(cost) + "</font> Pixels";
   }
}
