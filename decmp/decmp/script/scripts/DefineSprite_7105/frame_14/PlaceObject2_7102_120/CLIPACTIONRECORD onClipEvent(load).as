onClipEvent(load){
   hatID = 7;
   if(_root.save.stadiumTokenMax >= 1000000)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}
