onClipEvent(enterFrame){
   if(_parent.totalLoc > -3975)
   {
      targetAlpha = 100;
   }
   else
   {
      targetAlpha = 0;
   }
   _alpha = _alpha + Math.round((targetAlpha - _alpha) / 2);
}
