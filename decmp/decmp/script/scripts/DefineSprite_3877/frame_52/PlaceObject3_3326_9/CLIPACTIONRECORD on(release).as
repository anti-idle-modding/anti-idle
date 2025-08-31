on(release){
   if(_root.save.arenaSpookyKey == true)
   {
      _root.house.arena.travel(destination,travelPrice);
   }
   else
   {
      _root.showPopup("Access Denied","You don\'t have a Spooky Crypt Key.");
   }
}
