onClipEvent(enterFrame){
   fr = _root.dungeonRoomChest[_root.dungeonRoom] + 1;
   gotoAndStop(fr);
   if(Key.isDown(16) && _root.house.arena.popScreen._currentframe == 1)
   {
      openChest();
   }
}
