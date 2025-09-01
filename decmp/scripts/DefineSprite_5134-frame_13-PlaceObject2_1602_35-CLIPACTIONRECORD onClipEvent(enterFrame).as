onClipEvent(enterFrame){
   if(_root.save.arenaChaosLeft >= 7 && _root.save.arenaHardcore == true && _root.apocalypse == true)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
