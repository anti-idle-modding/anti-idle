on(release){
   if(_root.save.whiteCoin >= finalCost)
   {
      _root.save.whiteCoin -= finalCost;
      _root.save.restEfficiency[upgradeID] += 1;
      _root.totalRestEfficiency += 1;
      checkCost();
      if(upgradeLevel < 10)
      {
         _root.actiondescription = "Upgrade cost:\n<b>" + _root.withComma(finalCost) + "</b> White Coins";
      }
      else
      {
         _root.actiondescription = "";
      }
   }
}
