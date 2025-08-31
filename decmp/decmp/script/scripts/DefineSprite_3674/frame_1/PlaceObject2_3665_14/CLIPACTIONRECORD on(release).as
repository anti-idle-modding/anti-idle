on(release){
   if(_root.save.au >= 2)
   {
      _root.house.arena.travel(destination);
   }
   else
   {
      _root.showPopup("Access Denied","Upon attempting to enter, you hear a terrifying voice: Tm8gd2F5IHdlJ3JlIGxldHRpbmcgeW91IGVudGVyIQ==\nWhat does this mean, hmm...");
   }
}
