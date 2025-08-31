onClipEvent(load){
   if(_root.save.featureTukkunFCG == true)
   {
      eligible = 1;
      targetF = 12;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}
