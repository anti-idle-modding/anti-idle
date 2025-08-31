on(release){
   checkUpgrade();
   if(_root.save.unrankedPower[_parent.powID] < 5 && _root.save.arcade100kMedal >= cost)
   {
      _root.save.unrankedPower[_parent.powID] += 1;
      _root.totalUnrankedPower = 0;
      i = 1;
      while(i <= 40)
      {
         _root.totalUnrankedPower += _root.save.unrankedPower[i];
         i++;
      }
      _root.save.arcade100kMedal -= cost;
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
}
