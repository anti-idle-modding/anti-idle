on(release){
   if(Key.isDown(16))
   {
      if(_root.save.arenaCraft >= 25000000000 && _root.save.arenaEventKey[_root.selectedEvent] != 1 && _root.systemtimenow >= _root.eventEndTime[_root.selectedEvent])
      {
         _root.save.arenaCraft -= 25000000000;
         _root.save.arenaEventKey[_root.selectedEvent] = 1;
      }
      else
      {
         _root.showPopup("Error","You don\'t have enough Crafting Material.");
      }
   }
}
