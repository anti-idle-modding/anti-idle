on(dragOver,rollOver){
   checkUpgrade();
   if(_root.save.unrankedPower[_parent.powID] < 5)
   {
      _root.actiondescription = "<b>Upgrade</b>\nThis upgrade will cost you <b>" + _root.withComma(cost) + "</b> Arcade 100k Medals.";
   }
   else
   {
      _root.actiondescription = "";
   }
}
