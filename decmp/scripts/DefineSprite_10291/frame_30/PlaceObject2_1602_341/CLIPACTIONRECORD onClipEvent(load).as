onClipEvent(load){
   coinCost = 1337000000;
   reqLevel = 1000;
   if(_root.save.gDifficulty >= 2)
   {
      coinCost = 13370000000;
      reqLevel = 3000;
   }
}
