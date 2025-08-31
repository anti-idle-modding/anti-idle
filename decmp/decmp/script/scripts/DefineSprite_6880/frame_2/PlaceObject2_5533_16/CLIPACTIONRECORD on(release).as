on(release){
   if(_root.save.stadiumToken >= 100000 && _root.save.deathMatchEntry < 1)
   {
      _root.save.stadiumToken -= 100000;
      _root.save.deathMatchEntry += 1;
      _root.dispNews(98,"1 Death Match Entry purchased! (-100,000 Stadium Tokens)");
   }
}
