on(release){
   if(_root.save.arenaLevel >= reqRank)
   {
      _root.house.arena.travel(destination);
   }
   else
   {
      _root.showPopup("Too dangerous!","This area is too dangerous for you. Better avoid it for now.");
   }
}
