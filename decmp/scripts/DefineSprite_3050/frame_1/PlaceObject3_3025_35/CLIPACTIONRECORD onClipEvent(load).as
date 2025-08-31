onClipEvent(load){
   if(_root.save.featureStadium == true)
   {
      eligible = 1;
      targetF = 11;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}
