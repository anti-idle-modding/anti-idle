on(release){
   cnt = 1;
   if(Key.isDown(17))
   {
      cnt = maxFert;
   }
   c = 1;
   while(c <= cnt)
   {
      if(_root.systemtimenow < _root.save.gardenFertilizerAllow && _root.save.greenCoin >= 1000000 && Key.isDown(16))
      {
         _root.save.greenCoin -= 1000000;
         _root.save.gardenFertilizerAllow = _root.systemtimenow;
      }
      usable = false;
      if(_root.save.gardenFertilizer > 0 && _root.systemtimenow >= _root.save.gardenFertilizerAllow)
      {
         i = 1;
         while(i <= 25)
         {
            if(_root.save.gardenTrees[i] > 0 && _root.save.gardenTreeFertilize[i] < maxFert)
            {
               _alpha = 100;
               usable = true;
            }
            i++;
         }
      }
      if(usable == true)
      {
         _root.save.gardenFertilizer -= 1;
         fertCount = 0;
         _root.gainCareerEXP(2,250,true);
         valP = 0;
         i = 1;
         while(i <= 25)
         {
            if(_root.save.gardenTrees[i] > 0 && _root.save.gardenTreeFertilize[i] < maxFert)
            {
               fertCount += 1;
               _root.save.gardenTreeFertilize[i] += 1;
               oldVal = _root.save.gardenHarvestValue[i];
               _root.save.gardenHarvestValue[i] = Math.floor((_root.save.gardenHarvestValue[i] - _root.save.gardenTreeModuleProc[i]) * 1.05 + _root.save.gardenTreeModuleProc[i]);
               valP += _root.save.gardenHarvestValue[i] - oldVal;
               _root.save.gardenTreeExp[i] += 1;
            }
            i++;
         }
         _root.save.gardenFertilizerAllow = _root.systemtimenow + 900000;
         if(_root.save.careerLevel[2] >= 200)
         {
            _root.save.gardenFertilizerAllow = _root.systemtimenow + 630000;
         }
         _root.actiondescription = "";
         multiplier = Math.floor(Math.pow(_root.save.level,0.6)) / 10 + 6.5;
         _root.dispNews(23,fertCount + " trees fertilized with Fertilizer! Total Harvest Value: +" + _root.withComma(valP * multiplier));
      }
      c++;
   }
}
