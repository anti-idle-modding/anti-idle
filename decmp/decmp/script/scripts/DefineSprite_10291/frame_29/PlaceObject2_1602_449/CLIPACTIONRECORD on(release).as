on(release){
   if(_root.save.featureLolMarket != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureLolMarket = true;
      _root.dispNews(14,"[LolMarket] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}
