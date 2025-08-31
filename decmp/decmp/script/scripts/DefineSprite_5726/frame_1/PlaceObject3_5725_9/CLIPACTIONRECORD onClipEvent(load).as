onClipEvent(load){
   lev = 5;
   if(_parent.recipe >= lev)
   {
      gotoAndStop(lev + 1);
   }
}
