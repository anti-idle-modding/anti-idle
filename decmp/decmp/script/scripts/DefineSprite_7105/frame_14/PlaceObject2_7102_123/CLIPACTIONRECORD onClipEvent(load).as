onClipEvent(load){
   hatID = 8;
   if(_root.save.stadiumBunnyHat == true)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}
