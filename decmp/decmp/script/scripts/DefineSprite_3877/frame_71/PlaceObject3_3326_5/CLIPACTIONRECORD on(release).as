on(release){
   if(_root.save.apocSecretKill < 200)
   {
      _root.house.arena.travel(destination);
   }
   else
   {
      _root.showPopup("Too dangerous","It\'s too dangerous to go here at the moment.");
   }
}
