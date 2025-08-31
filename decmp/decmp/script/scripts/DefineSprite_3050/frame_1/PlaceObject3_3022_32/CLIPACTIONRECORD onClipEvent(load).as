onClipEvent(load){
   if(_root.save.featureButtonMachine == true)
   {
      eligible = 1;
      targetF = 8;
   }
   else
   {
      this.removeMovieClip();
      removeMovieClip(this);
      this.unloadMovie();
      unloadMovie(this);
   }
}
