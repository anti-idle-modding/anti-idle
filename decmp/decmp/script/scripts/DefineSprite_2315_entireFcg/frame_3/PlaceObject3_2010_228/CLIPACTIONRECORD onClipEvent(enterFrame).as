onClipEvent(enterFrame){
   delay += 1;
   if(_alpha == 100)
   {
      _Y = 0;
   }
   if(delay > 1)
   {
      delay = 0;
      if(_alpha > 0)
      {
         _Y = _Y - 0.2;
         _alpha = _alpha - 1;
      }
   }
}
