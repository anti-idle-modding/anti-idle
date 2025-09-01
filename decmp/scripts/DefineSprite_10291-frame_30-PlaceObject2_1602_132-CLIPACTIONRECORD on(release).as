on(release){
   if(_root.save.featureManualSprayer != true && _root.save.greenCoin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.greenCoin -= coinCost;
      _root.save.featureManualSprayer = true;
      _root.dispNews(14,"[Manual Ant Sprayer] successfully purchased! (-" + _root.withComma(coinCost) + " Green Coins)");
   }
}
