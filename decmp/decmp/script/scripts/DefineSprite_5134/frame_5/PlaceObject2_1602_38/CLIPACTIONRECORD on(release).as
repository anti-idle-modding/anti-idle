on(release){
   if(_root.save.arenaBonusChange < 50 && _root.save.arenaPixel >= 500000000)
   {
      _root.save.arenaPixel -= 500000000;
      _root.save.arenaBonusChange += 50;
   }
}
