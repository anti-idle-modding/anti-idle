onClipEvent(load){
   function checkCost()
   {
      upgradeLevel = _root.save.restEfficiency[upgradeID];
      finalCost = baseCost * (upgradeLevel + 1) * (upgradeLevel + 1);
      if(upgradeLevel >= 10)
      {
         finalCost = Infinity;
      }
   }
   upgradeID = 4;
   baseCost = 250;
   checkCost();
}
