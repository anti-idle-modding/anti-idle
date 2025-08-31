onClipEvent(enterFrame){
   fr = 1;
   if(_root.save.gardenCapacity >= slot)
   {
      fr = 2;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}
