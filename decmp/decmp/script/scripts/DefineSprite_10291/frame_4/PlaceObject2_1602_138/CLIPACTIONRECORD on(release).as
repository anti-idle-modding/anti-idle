on(release){
   checkCost();
   if(_root.save.greenCoin >= cost && _root.save.boostMax < 1600)
   {
      _root.save.greenCoin -= cost;
      _root.save.boostMax += 50;
      _root.depleteBoost();
   }
   checkCost();
}
