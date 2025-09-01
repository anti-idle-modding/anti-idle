onClipEvent(enterFrame){
   if(alphaX > 0)
   {
      alphaX -= 1;
   }
   _alpha = Math.min(alphaX,100);
}
