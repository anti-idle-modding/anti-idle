onClipEvent(enterFrame){
   if(_root.saveGlobal.skipMenu == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
