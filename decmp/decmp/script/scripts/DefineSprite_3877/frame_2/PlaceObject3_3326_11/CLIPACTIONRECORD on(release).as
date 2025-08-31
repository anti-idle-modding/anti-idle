on(release){
   if(_root.save.battlePoint >= 500 && _root.house.arena.enemy.enemyID == 0)
   {
      _root.house.arena.kommanderDialog.gotoAndStop(9);
      _root.house.arena.travel(80);
   }
   else
   {
      _root.showPopup("Too dangerous!","This area is too dangerous for you. Better avoid it for now.");
   }
}
