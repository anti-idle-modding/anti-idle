onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.focusTiletype != -1)
      {
         powerType = 2;
         powerCost = 20;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}
