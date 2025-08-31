onClipEvent(enterFrame){
   if(_root.save.offlineProgress == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
