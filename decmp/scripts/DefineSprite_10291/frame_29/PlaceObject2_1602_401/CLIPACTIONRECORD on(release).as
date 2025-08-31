on(release){
   if(_root.save.featureMoneyPrinter != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureMoneyPrinter = true;
      _root.dispNews(14,"[Money Printer] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}
