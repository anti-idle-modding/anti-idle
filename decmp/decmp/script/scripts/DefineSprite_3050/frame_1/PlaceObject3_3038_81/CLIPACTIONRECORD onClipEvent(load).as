onClipEvent(load){
   if(_root.save.featureBattleArena == true)
   {
      eligible = 1;
      targetF = 7;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}
