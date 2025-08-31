onClipEvent(enterFrame){
   delay += 1;
   if(delay > 2)
   {
      delay = 0;
      checkFrame();
   }
}
