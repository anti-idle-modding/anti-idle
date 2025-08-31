onClipEvent(load){
   if(_root.save.featureAwesomeAdventures == true)
   {
      eligible = 1;
      targetF = 14;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}
