on(release){
   if(_root.save.arcade100kMedal >= 500)
   {
      _root.save.arcade100kMedal -= 500;
      _root.save.arcadeBless += 10;
      _root.house.scoreMedalText.text = _root.withComma(_root.save.arcade100kMedal);
      _root.dispNews(98,"Arcade Blessing (10 games) purchased! (-500 Arcade 100k Medals)");
   }
}
