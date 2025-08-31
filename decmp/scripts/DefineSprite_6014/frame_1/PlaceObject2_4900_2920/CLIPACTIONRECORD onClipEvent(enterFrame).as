onClipEvent(enterFrame){
   _X = _X + (targetX - _X) / 2;
   if(_X < 489)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
