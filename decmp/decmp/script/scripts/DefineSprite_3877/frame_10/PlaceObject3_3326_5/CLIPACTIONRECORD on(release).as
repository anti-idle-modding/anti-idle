on(release){
   if(_root.save.arenaLevel >= reqRank && _root.save.featureTravelingTicket == true)
   {
      _root.house.arena.travel(destination);
   }
   else if(_root.save.arenaLevel < reqRank)
   {
      _root.showPopup("Too dangerous!","This area is too dangerous for you. Better avoid it for now.");
   }
   else
   {
      _root.showPopup("Access Denied","You need a VIP Traveling Ticket to continue.");
   }
}
