onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.focusTiletype != -1)
      {
         powerType = 3;
         powerCost = 25;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}
