on(release){
   if(_root.save.battleDaily != true)
   {
      _root.save.arenaPixel += _parent.dailyPixel;
      _root.save.battleDaily = true;
   }
}
