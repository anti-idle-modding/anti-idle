onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.focusTiletype != -1)
      {
         powerType = 6;
         powerCost = 40;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}
