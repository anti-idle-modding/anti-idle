onClipEvent(enterFrame){
   if(_alpha > 0)
   {
      _alpha = _alpha - 1;
   }
   else if(Math.random() < 0.1)
   {
      res();
   }
}
