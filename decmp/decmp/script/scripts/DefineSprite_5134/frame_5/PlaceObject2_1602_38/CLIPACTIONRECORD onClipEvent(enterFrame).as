onClipEvent(enterFrame){
   if(_root.save.arenaBonusChange < 50 && _root.save.arenaPixel >= 500000000)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
