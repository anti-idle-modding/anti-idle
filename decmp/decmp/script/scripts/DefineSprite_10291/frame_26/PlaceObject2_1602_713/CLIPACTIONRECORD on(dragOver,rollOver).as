on(dragOver,rollOver){
   if(upgradeLevel < 10)
   {
      _root.actiondescription = "Upgrade cost:\n<b>" + _root.withComma(finalCost) + "</b> White Coins";
   }
}
