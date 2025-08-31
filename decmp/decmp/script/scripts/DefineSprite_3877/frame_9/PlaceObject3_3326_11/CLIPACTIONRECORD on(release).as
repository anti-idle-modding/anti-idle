on(release){
   if(_root.house.arena.enemy.enemyID == 0)
   {
      if(_root.save.gDifficulty < 3 || _root.save.level >= 1500)
      {
         _parent._parent.kommanderDialog.gotoAndStop(11);
      }
      else
      {
         _root.showPopup("Impossible Ascension","You have to reach level 1,500 to access the Dark Pyramid.");
      }
   }
}
