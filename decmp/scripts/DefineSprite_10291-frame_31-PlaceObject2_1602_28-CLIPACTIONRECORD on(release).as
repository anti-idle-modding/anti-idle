on(release){
   if(_root.save.stadiumH2 != true && _root.save.blueCoin >= coinCost && _root.save.featureStadium == true)
   {
      _root.save.blueCoin -= coinCost;
      _root.save.stadiumH2 = true;
      _root.dispNews(14,"[Crown Hat] successfully purchased! (-" + _root.withComma(coinCost) + " Blue Coins)");
   }
}
