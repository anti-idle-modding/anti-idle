onClipEvent(enterFrame){
   if(_root.save.greenCoin >= 1000000 && _root.save.arcadeToken < 95)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
