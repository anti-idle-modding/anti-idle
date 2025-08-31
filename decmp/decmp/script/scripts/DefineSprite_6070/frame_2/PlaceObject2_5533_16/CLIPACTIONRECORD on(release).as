on(release){
   if(_root.save.buttonPurple >= 200 && _root.save.buttonMultiplier < 1200)
   {
      _root.save.buttonPurple -= 200;
      _root.save.buttonMultiplier += 2;
      _root.dispNews(74,"+2% Button Machine multiplier purchased! (-200 Purple Buttons)");
   }
}
