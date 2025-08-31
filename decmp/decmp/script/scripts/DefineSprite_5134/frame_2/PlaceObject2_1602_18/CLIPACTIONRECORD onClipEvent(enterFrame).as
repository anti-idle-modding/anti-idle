onClipEvent(enterFrame){
   if(_root.save.arenaKommanderProgress >= _root.save.arenaKommanderMonCount)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
