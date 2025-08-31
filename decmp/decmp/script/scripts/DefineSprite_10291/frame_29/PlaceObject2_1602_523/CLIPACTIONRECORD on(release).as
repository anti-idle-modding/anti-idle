on(release){
   if(_root.save.featureFishing != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureFishing = true;
      _root.dispNews(14,"[Fishing] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}
