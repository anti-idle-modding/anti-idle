on(rollOver){
   _root.actiondescription = "<b>Mega Fertilizer</b>\nIncreases the Harvest Value of all planted trees in Home Garden by 10% and Garden EXP given by 2. Each tree can be fertilized up to 20 times.\nYou may have up to 9,999 unused Mega Fertilizers.\n\nAfter using this, you may not use another Fertilizer or Mega Fertilizer in any Garden for 15 minutes.";
   if(usable == true)
   {
      _root.actiondescription += "\n<font color=\'#FFFF00\'>Available now</font>";
   }
   else
   {
      _root.actiondescription += "\n<font color=\'#FFFF00\'>Next: " + _root.convertSecFull((_root.save.gardenFertilizerAllow - _root.systemtimenow) / 1000) + "</font>";
   }
}
