onClipEvent(enterFrame){
   lev = 4;
   if(_root.save.unrankedPower[_parent.powID] >= lev)
   {
      gotoAndStop(lev + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}
