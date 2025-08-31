onClipEvent(load){
   hatID = 5;
   if(_root.save.aceFinish > 0)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}
