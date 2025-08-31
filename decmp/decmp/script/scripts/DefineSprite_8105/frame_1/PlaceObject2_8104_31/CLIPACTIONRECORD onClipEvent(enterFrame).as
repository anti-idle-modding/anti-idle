onClipEvent(enterFrame){
   if(_root.save.restTime > 0)
   {
      gotoAndStop(2);
      timeText.text = _root.convertSecFull(_root.save.restTime);
   }
   else
   {
      gotoAndStop(1);
   }
}
