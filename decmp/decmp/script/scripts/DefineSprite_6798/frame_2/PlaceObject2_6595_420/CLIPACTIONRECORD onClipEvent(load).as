onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.focusTiletype != -1)
      {
         powerType = 5;
         powerCost = 60;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}
