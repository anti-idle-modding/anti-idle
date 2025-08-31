onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.focusTiletype != -1)
      {
         powerType = 4;
         powerCost = 25;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}
