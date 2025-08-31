onClipEvent(load){
   if(_root.save.idleMode == false)
   {
      gotoAndStop(1);
   }
   else if(_root.save.idleMode == true)
   {
      gotoAndStop(2);
   }
}
