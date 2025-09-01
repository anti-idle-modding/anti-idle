onClipEvent(enterFrame){
   if(_root.save.bestLevel < 1250 && _root.saveid < 10)
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
