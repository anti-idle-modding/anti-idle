on(release){
   checkDowngrade();
   if(_root.save.unrankedPower[_parent.powID] > 0)
   {
      _root.save.unrankedPower[_parent.powID] -= 1;
      _root.totalUnrankedPower = 0;
      i = 1;
      while(i <= 40)
      {
         _root.totalUnrankedPower += _root.save.unrankedPower[i];
         i++;
      }
      _root.save.arcade100kMedal += gainBack;
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
}
