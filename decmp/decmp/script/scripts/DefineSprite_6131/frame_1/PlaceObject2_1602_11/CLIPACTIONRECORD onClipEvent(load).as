onClipEvent(load){
   function checkUpgrade()
   {
      cost = 0;
      if(_root.save.unrankedPower[_parent.powID] == 0)
      {
         cost = Math.floor(_parent.baseCost * 1);
      }
      if(_root.save.unrankedPower[_parent.powID] == 1)
      {
         cost = Math.floor(_parent.baseCost * 5);
      }
      if(_root.save.unrankedPower[_parent.powID] == 2)
      {
         cost = Math.floor(_parent.baseCost * 25);
      }
      if(_root.save.unrankedPower[_parent.powID] == 3)
      {
         cost = Math.floor(_parent.baseCost * 100);
      }
      if(_root.save.unrankedPower[_parent.powID] == 4)
      {
         cost = Math.floor(_parent.baseCost * 500);
      }
   }
}
