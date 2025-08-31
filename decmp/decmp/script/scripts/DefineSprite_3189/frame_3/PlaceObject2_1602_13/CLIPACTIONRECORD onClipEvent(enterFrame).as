onClipEvent(enterFrame){
   if(_root.systemtimenow < _root.save.gardenFertilizerAllow && _root.save.greenCoin >= 1000000)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
