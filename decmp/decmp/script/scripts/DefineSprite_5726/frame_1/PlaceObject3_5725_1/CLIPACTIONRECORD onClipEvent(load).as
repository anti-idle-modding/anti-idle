onClipEvent(load){
   lev = 1;
   if(_parent.recipe >= lev)
   {
      gotoAndStop(lev + 1);
   }
}
