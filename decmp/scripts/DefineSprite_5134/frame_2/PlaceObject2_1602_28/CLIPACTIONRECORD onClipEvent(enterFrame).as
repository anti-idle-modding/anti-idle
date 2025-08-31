onClipEvent(enterFrame){
   if(_root.save.arenaKommanderSkip > 0 || _root.save.arenaUnobtainium >= 100)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
