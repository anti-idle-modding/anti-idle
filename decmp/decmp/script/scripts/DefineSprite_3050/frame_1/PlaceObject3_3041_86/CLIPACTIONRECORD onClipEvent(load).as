onClipEvent(load){
   if(_root.save.featureLolMarket == true)
   {
      eligible = 1;
      targetF = 13;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}
