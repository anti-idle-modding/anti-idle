on(release){
   if(_root.save.arenaLevel >= 150)
   {
      _root.house.arena.travel(destination,travelPrice);
   }
   else
   {
      _root.showPopup("Hmm...","There\'s something strange about this...");
   }
}
