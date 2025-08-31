on(dragOver,rollOver){
   checkDowngrade();
   if(_root.save.unrankedPower[_parent.powID] > 0)
   {
      _root.actiondescription = "<b>Downgrade</b>\nYou will gain <b>" + _root.withComma(gainBack) + "</b> Arcade 100k Medals back if you downgrade this.";
   }
   else
   {
      _root.actiondescription = "";
   }
}
