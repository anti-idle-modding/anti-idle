onClipEvent(enterFrame){
   costCoin = _root.save.gardenCapacity * _root.save.gardenCapacity * 500000;
   costPoint = costArray[_root.save.gardenCapacity];
   if(_root.saveid == 24)
   {
      costPoint = 10000000;
   }
   if(_root.save.gardenCapacity >= 25)
   {
      _alpha = 0;
   }
   else if(_root.save.coin < costCoin || _root.save.gardenPoint < costPoint)
   {
      _alpha = 30;
   }
   else
   {
      _alpha = 100;
   }
}
