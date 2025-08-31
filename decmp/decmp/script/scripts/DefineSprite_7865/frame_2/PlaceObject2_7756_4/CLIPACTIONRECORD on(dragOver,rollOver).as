on(dragOver,rollOver){
   if(_root.save.fishCapacity >= 100000)
   {
      _root.actiondescription = "";
   }
   else if(_root.save.coin >= coinCost)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Capacity Up</b></font>\nCost: <b>" + _root.withComma(coinCost) + "</b> Coins\n\nCarry even more stuff in your bucket!";
   }
   else
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Capacity Up</b></font>\nCost: <b>" + _root.withComma(coinCost) + "</b> Coins\n\n<font color=\'#FF0000\'>You don\'t have enough Coins.</font>";
   }
}
