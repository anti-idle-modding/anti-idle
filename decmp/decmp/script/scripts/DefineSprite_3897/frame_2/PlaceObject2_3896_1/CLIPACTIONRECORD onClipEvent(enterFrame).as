onClipEvent(enterFrame){
   if(_root.spiritBreak > 0 && _root.save.disableManaEffect != true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
}
