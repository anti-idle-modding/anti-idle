onClipEvent(load){
   lev = 3;
   if(_parent.recipe >= lev)
   {
      gotoAndStop(lev + 1);
   }
}
