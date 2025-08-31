on(release){
   if(_root.save.arenaAllyFavorite[_parent.ID] != true)
   {
      _root.save.arenaAllyFavorite[_parent.ID] = true;
   }
   else
   {
      _root.save.arenaAllyFavorite[_parent.ID] = false;
   }
   _parent.checkAlly();
}
