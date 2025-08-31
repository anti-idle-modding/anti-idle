onClipEvent(load){
   hatID = 6;
   if(_root.save.stadiumBetCorrect >= 50)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}
