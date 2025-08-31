onClipEvent(enterFrame){
   if(tempLvl != _root.save.fishLevel)
   {
      tempLvl = _root.save.fishLevel;
      checkFrame();
   }
}
