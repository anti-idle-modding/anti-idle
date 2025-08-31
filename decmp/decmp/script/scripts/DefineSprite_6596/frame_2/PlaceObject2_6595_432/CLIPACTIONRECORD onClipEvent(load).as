onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.focusTiletype == 3)
      {
         powerType = 8;
         powerCost = 15;
      }
      else if(_root.focusTiletype == 4)
      {
         powerType = 10;
         powerCost = 50;
      }
      else if(_root.focusTiletype == 5)
      {
         powerType = 12;
         powerCost = 25;
      }
      else if(_root.focusTiletype == 6)
      {
         powerType = 14;
         powerCost = 30;
      }
      else if(_root.focusTiletype == 7)
      {
         powerType = 16;
         powerCost = 50;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}
