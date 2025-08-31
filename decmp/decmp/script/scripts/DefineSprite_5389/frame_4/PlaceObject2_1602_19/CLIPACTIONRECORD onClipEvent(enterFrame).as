onClipEvent(enterFrame){
   del += 1;
   if(del >= 40)
   {
      del = 0;
      checkUpgrade();
   }
}
