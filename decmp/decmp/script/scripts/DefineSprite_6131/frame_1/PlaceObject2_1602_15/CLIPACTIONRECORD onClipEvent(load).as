onClipEvent(load){
   function checkDowngrade()
   {
      gainBack = 0;
      if(_root.save.unrankedPower[_parent.powID] == 1)
      {
         gainBack = Math.floor(_parent.baseCost * 0.8);
      }
      if(_root.save.unrankedPower[_parent.powID] == 2)
      {
         gainBack = Math.floor(_parent.baseCost * 4);
      }
      if(_root.save.unrankedPower[_parent.powID] == 3)
      {
         gainBack = Math.floor(_parent.baseCost * 20);
      }
      if(_root.save.unrankedPower[_parent.powID] == 4)
      {
         gainBack = Math.floor(_parent.baseCost * 80);
      }
      if(_root.save.unrankedPower[_parent.powID] == 5)
      {
         gainBack = Math.floor(_parent.baseCost * 400);
      }
   }
}
