onClipEvent(load){
   if(_root.save.featureMoneyPrinter == true)
   {
      eligible = 1;
      targetF = 9;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}
