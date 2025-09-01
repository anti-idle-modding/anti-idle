onClipEvent(load){
   if(_root.save.featureGarden == true)
   {
      eligible = 1;
      targetF = 6;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}
