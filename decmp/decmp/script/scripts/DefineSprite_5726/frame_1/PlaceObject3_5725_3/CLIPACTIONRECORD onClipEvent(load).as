onClipEvent(load){
   lev = 2;
   if(_parent.recipe >= lev)
   {
      gotoAndStop(lev + 1);
   }
}
