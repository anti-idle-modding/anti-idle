on(release){
   if(_root.systemtimenow < _root.save.gardenFertilizerAllow && _root.save.greenCoin >= 1000000)
   {
      _root.save.greenCoin -= 1000000;
      _root.save.gardenFertilizerAllow = _root.systemtimenow;
   }
}
