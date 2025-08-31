function checkKommander()
{
   missionText.text = "Mission #" + (_root.save.arenaKommanderComplete + 1) + ": Defeat " + _root.withComma(_root.save.arenaKommanderMonCount) + " [" + _root.enemyList[_root.save.arenaKommanderMonID].name + "]";
   progText.text = _root.withComma(_root.save.arenaKommanderProgress) + " / " + _root.withComma(_root.save.arenaKommanderMonCount);
   r1Text.text = "x" + _root.save.arenaKommanderProgBox;
   r2Text.text = "x" + _root.save.arenaKommanderPixBox;
   r3Text.text = "x" + _root.save.arenaKommanderProof;
   bar._xscale = _root.save.arenaKommanderProgress / _root.save.arenaKommanderMonCount * 100;
   if(_root.save.arenaZone != 0)
   {
      gotoAndStop(1);
   }
}
function genKommanderMission()
{
   kd = Math.floor(_root.save.arenaLevel / 10) + Math.floor(Math.sqrt(_root.save.arenaKommanderComplete));
   if(_root.save.arenaLevel < 500)
   {
      if(kd > Math.floor(_root.save.arenaLevel / 10 * 1.5))
      {
         kd = Math.floor(_root.save.arenaLevel / 10 * 1.5);
      }
   }
   if(kd > 100)
   {
      kd = 100;
   }
   if(kd < 1)
   {
      kd = 1;
   }
   kd = Math.round(kd * (0.8 + Math.random() * 0.4));
   monID = 2;
   monCount = 10;
   tmpID = new Array();
   tmpScore = new Array();
   tmpBest = -1;
   tmpBestScore = 0;
   i = 1;
   while(i <= 50)
   {
      tmpID[i] = random(500) + 1;
      if(_root.save.banned < 1 && _root.save.bannedB < 1)
      {
         tmpID[i] = random(447) + 1;
      }
      if(_root.save.arenaKommanderComplete < 10)
      {
         tmpID[i] = random(176) + 2;
      }
      tmpScore[i] = -1;
      if(_root.komDiff[tmpID[i]] != -1)
      {
         if(kd >= _root.komDiff[tmpID[i]])
         {
            tmpScore[i] = _root.komDiff[tmpID[i]] + 100 - i * 2;
            if(i <= 4)
            {
               tmpScore[i] += 100;
            }
         }
      }
      i++;
   }
   i = 1;
   while(i <= 50)
   {
      if(tmpScore[i] > tmpBestScore)
      {
         tmpBestScore = tmpScore[i];
         tmpBest = i;
      }
      i++;
   }
   if(tmpBest == -1)
   {
      _root.save.arenaKommanderPixBox = 1;
      _root.save.arenaKommanderProgBox = 1;
      _root.save.arenaKommanderProof = 1;
   }
   else
   {
      monID = tmpID[tmpBest];
      if(kd > _root.komDiff[monID] * 5)
      {
         kd = _root.komDiff[monID] * 5;
      }
      monCount = Math.floor(kd * _root.komCount[monID] / _root.komDiff[monID]);
      if(_root.save.arenaKommanderComplete < 10)
      {
         monCount = Math.ceil(monCount / 2);
      }
      if(monCount >= 10)
      {
         monCount = Math.ceil(monCount / 5) * 5;
      }
      if(monCount >= 50)
      {
         monCount = Math.ceil(monCount / 10) * 10;
      }
      if(monCount >= 100)
      {
         monCount = Math.ceil(monCount / 25) * 25;
      }
      if(monCount >= 200)
      {
         monCount = Math.ceil(monCount / 50) * 50;
      }
      if(monCount >= 400)
      {
         monCount = Math.ceil(monCount / 100) * 100;
      }
      if(_root.enemyList[monID].boss == true)
      {
         kd = Math.ceil(kd * 1.5);
      }
      _root.save.arenaKommanderPixBox = Math.ceil(kd * 1.8 * (1 + Math.random() * 0.5) / 10 + 2);
      _root.save.arenaKommanderProgBox = Math.ceil(kd * 1.8 * (1 + Math.random() * 0.5) + 20);
      if(_root.save.arenaKommanderProgBox >= 10)
      {
         _root.save.arenaKommanderProgBox = Math.ceil(_root.save.arenaKommanderProgBox / 5) * 5;
      }
      if(_root.save.arenaKommanderProgBox >= 50)
      {
         _root.save.arenaKommanderProgBox = Math.ceil(_root.save.arenaKommanderProgBox / 10) * 10;
      }
      if(_root.save.arenaKommanderProgBox >= 100)
      {
         _root.save.arenaKommanderProgBox = Math.ceil(_root.save.arenaKommanderProgBox / 25) * 25;
      }
      if(_root.save.arenaKommanderProgBox >= 200)
      {
         _root.save.arenaKommanderProgBox = Math.ceil(_root.save.arenaKommanderProgBox / 50) * 50;
      }
      if(_root.save.arenaKommanderProgBox >= 400)
      {
         _root.save.arenaKommanderProgBox = Math.ceil(_root.save.arenaKommanderProgBox / 100) * 100;
      }
      _root.save.arenaKommanderProof = Math.ceil(kd / 5);
      if(_root.save.arenaKommanderProgBox > 9999)
      {
         _root.save.arenaKommanderProgBox = 9999;
      }
      if(_root.save.arenaKommanderPixBox > 999)
      {
         _root.save.arenaKommanderPixBox = 999;
      }
      if(_root.save.arenaKommanderProof > 99)
      {
         _root.save.arenaKommanderProof = 99;
      }
   }
   _root.save.arenaKommanderMonID = monID;
   _root.save.arenaKommanderMonCount = monCount;
}
checkKommander();
onEnterFrame = function()
{
   checkKommander();
};
