on(release){
   if(_root.save.coin >= costCoin && _root.save.gardenPoint >= costPoint && _alpha > 0)
   {
      _root.save.coin -= costCoin;
      _root.save.gardenPoint -= costPoint;
      _root.save.gardenCapacity += 1;
      _root.dispNews(24,"Plot #" + _root.save.gardenCapacity + " unlocked! (-" + _root.withComma(costCoin) + " Coins | -" + _root.withComma(costPoint) + " Garden Points)");
      costCoin = _root.save.gardenCapacity * (_root.save.gardenCapacity - 25) * 5000000;
      costPoint = costArray[_root.save.gardenCapacity - 25];
      _root.actiondescription = "Unlock an extra plot to plant in with " + _root.withComma(costCoin) + " Coins and " + _root.withComma(costPoint) + " Garden Points!";
   }
}
