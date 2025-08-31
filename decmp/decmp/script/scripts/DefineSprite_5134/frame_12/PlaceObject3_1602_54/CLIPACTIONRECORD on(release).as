on(release){
   if(_root.systemtimenow >= _root.eventStartTime[_root.selectedEvent] && _root.systemtimenow < _root.eventEndTime[_root.selectedEvent] || _root.save.arenaEventKey[_root.selectedEvent] == 1)
   {
      _root.save.arenaEvent = _root.selectedEvent;
      _root.house.arena.travel(82);
      _parent.gotoAndStop(1);
   }
   else
   {
      _root.showPopup("Event Unavailable","This event is currently unavailable.");
   }
}
