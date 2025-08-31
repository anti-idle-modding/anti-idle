onClipEvent(enterFrame){
   if(_root.buttonLife < 200 || _root.save.buttonBroken == true)
   {
      fr = 2;
   }
   else
   {
      fr = 1;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}
