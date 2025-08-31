onClipEvent(load){
   hatID = 4;
   if(_root.save.stadiumDeathMatch >= 50 || _root.save.stadiumBestDeathMatch >= 1000)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}
