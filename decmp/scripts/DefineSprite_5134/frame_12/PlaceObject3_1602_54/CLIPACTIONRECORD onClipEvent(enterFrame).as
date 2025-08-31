onClipEvent(enterFrame){
   if(_root.systemtimenow < _root.eventEndTime[_root.selectedEvent] || _root.save.arenaEventKey[_root.selectedEvent] == 1)
   {
      _Y = 150;
   }
   else
   {
      _Y = 500;
   }
   if(_root.systemtimenow >= _root.eventStartTime[_root.selectedEvent] && _root.systemtimenow < _root.eventEndTime[_root.selectedEvent] || _root.save.arenaEventKey[_root.selectedEvent] == 1)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
