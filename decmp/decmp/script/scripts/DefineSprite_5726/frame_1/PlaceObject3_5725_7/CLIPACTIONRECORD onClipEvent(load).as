onClipEvent(load){
   lev = 4;
   if(_parent.recipe >= lev)
   {
      gotoAndStop(lev + 1);
   }
}
