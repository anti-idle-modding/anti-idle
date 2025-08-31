on(release){
   _root.actiondescription = "";
   if(_root.house.arena.enemy.enemyID == 0)
   {
      _root.house.arena.gotoAndStop(3);
   }
   else
   {
      _root.showPopup("Kill the monster","Let\'s kill that monster first!");
   }
}
