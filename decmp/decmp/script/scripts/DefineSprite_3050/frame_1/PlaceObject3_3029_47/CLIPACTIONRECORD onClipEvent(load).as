onClipEvent(load){
   if(_root.save.featureArcade == true)
   {
      eligible = 1;
      targetF = 10;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}
