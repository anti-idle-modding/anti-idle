onClipEvent(enterFrame){
   ok = 0;
   if(_root.dungeonRoom < 31 && _root.dungeonRoomClear[_root.dungeonRoom] == 1 || _root.dungeonRoom == 36)
   {
      ok = 1;
   }
   if(ok == 0 && _alpha != 0)
   {
      _alpha = 0;
   }
   if(ok == 1 && _alpha != 100)
   {
      _alpha = 100;
   }
}
