onClipEvent(load){
   hatID = 3;
   if(_root.save.stadiumItem >= 500 || _root.save.stadiumImpossibleItem >= 25)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}
