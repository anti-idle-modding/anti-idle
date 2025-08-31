onClipEvent(load){
   if(_root.save.progTutorial != true && _root.save.newbieProgress >= 8)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}
