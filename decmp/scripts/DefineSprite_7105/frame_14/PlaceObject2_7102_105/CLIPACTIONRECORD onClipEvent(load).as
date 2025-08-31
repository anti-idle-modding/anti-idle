onClipEvent(load){
   hatID = 2;
   if(_root.save.stadiumRace >= 500 || _root.save.stadiumImpossibleRace >= 25)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}
