onClipEvent(enterFrame){
   maxFert = 20;
   if(_root.save.careerLevel[2] >= 200)
   {
      maxFert = 21;
   }
   _alpha = 30;
   usable = false;
   if(_root.save.gardenFertilizer > 0 && _root.systemtimenow >= _root.save.gardenFertilizerAllow)
   {
      i = 26;
      while(i <= 50)
      {
         if(_root.save.gardenTrees[i] > 0 && _root.save.gardenTreeFertilize[i] < maxFert)
         {
            _alpha = 100;
            usable = true;
         }
         i++;
      }
   }
}
