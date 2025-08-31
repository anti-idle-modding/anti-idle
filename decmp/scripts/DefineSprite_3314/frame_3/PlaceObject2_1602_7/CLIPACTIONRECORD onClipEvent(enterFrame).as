onClipEvent(enterFrame){
   costCoin = _root.save.gardenCapacity * (_root.save.gardenCapacity - 25) * (_root.save.gardenCapacity - 50) * 5000000;
   costPoint = costArray[_root.save.gardenCapacity - 50];
   if(_root.save.gardenCapacity >= 75)
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
