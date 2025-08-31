onClipEvent(enterFrame){
   duration += 1;
   if(duration <= 50)
   {
      _alpha = _alpha + 2;
   }
   if(duration >= 250)
   {
      _alpha = _alpha - 2;
   }
   if(duration == 300)
   {
      reset();
   }
}
