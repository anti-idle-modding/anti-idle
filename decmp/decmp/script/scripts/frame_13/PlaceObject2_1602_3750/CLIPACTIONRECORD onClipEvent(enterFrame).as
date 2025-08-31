onClipEvent(enterFrame){
   if(_root.save.bestLevel < 900)
   {
      xAlpha = 30;
   }
   else
   {
      xAlpha = 100;
   }
   if(_alpha != xAlpha)
   {
      _alpha = xAlpha;
   }
}
