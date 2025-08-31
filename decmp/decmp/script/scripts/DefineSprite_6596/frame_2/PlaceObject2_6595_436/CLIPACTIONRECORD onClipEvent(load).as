onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.keyrevealed == false)
      {
         powerType = 17;
         powerCost = 120;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}
