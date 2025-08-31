onClipEvent(enterFrame){
   if(_alpha > 0)
   {
      _alpha = _alpha - 40 / _root.fps;
   }
   else
   {
      gotoAndStop(5);
   }
}
