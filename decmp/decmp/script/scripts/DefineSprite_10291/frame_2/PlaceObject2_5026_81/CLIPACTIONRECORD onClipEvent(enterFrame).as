onClipEvent(enterFrame){
   if(_root.save["antiLag" + t] == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
