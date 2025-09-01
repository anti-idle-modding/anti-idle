on(release){
   if(_root.save.featureEpicLicense != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureEpicLicense = true;
      _root.dispNews(14,"[Epic License] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}
