onClipEvent(enterFrame){
   if(_root.save.greenCoin >= 250000000 && _root.save.fishExp >= 1000000)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 20;
   }
}
