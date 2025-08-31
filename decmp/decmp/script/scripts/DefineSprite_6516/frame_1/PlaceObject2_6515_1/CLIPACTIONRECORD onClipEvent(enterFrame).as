onClipEvent(enterFrame){
   if(frame == 1)
   {
      if(Math.random() < appearChance / _root.fps && _root.arcadeAppearDelay <= 0)
      {
         _root.arcadeAppearDelay = 0.7 - _root.save.arcadeDifficulty[4] * 0.1;
         _root.arcadeAppear += 1;
         if(Math.floor((_root.arcadeAppear + del) / 21) == (_root.arcadeAppear + del) / 21 && _root.arcadeMultiplier < 9)
         {
            frame = 5;
            time = 2;
         }
         else if(Math.floor(_root.arcadeAppear / 7) == _root.arcadeAppear / 7 && Math.floor(_root.arcadeAppear / 21) != _root.arcadeAppear / 21)
         {
            frame = 3;
            time = 3;
         }
         else if(Math.random() < gregChance)
         {
            frame = 2;
            time = 5;
         }
         else if(Math.random() < wcChance && _parent._parent.whackMonster != true)
         {
            frame = 6;
            time = 2;
         }
         else if(Math.random() < fakeAwesomeChance)
         {
            frame = 7;
            time = 4;
            _root.arcadeAppear -= 1;
         }
         else if(_root.save.rankedMode != true && Math.random() < 0.2 * _root.save.unrankedPower[19])
         {
            _root.arcadeAppear -= 1;
         }
         else
         {
            frame = 4;
            time = 4;
            _root.arcadeAppear -= 1;
         }
      }
   }
   if(frame != 1)
   {
      time -= 1 / _root.fps;
   }
   if(time < 0)
   {
      time = 0;
      if(frame == 2)
      {
         _root.whackMessage = "OOPS!\n-7% Life";
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         _root.arcadeLife -= 7;
      }
      frame = 1;
   }
   if(frame == 2)
   {
      if(_root.save.rankedMode != true)
      {
         _root.arcadeLife -= (0.5 + Math.sqrt(_root.arcadeWhack / 10)) * (1 - _root.save.unrankedPower[17] * 0.03) / _root.fps;
      }
      else
      {
         _root.arcadeLife -= (0.5 + Math.sqrt(_root.arcadeWhack / 10)) / _root.fps;
      }
   }
   if(_parent._parent.whackMonster == true)
   {
      if(time < 4.75 && time < _root.monsterLeastTime && frame == 2 || frame == 3 || frame == 5)
      {
         _root.monsterTargetX = _parent._x - 10 + random(21);
         _root.monsterTargetY = _parent._y - 10 + random(21);
      }
      distX = Math.abs(_root.monsterActualX - _parent._x);
      distY = Math.abs(_root.monsterActualY - _parent._y);
      if(distX < 15 && distY < 15 && frame != 4 && frame != 1 && Math.random() < 0.35)
      {
         _root.monsterLeastTime = 999;
         if(frame == 2)
         {
            _root.arcadeWhack += 1;
            oriScore = Math.floor(time * 50) + 6;
            comment = "OK!";
            rank = 1;
            if(oriScore >= 175)
            {
               comment = "GOOD!";
               rank = 2;
            }
            if(oriScore >= 200)
            {
               comment = "GREAT!";
               rank = 3;
            }
            if(oriScore >= 225)
            {
               comment = "PERFECT!";
               rank = 4.5;
            }
            if(oriScore >= 232)
            {
               comment = "PERFECT!!";
               rank = 6;
            }
            actualScore = Math.floor(oriScore * _root.arcadeMultiplier * rank * 10);
            if(_root.save.arcadeDifficulty[4] == 1)
            {
               actualScore = Math.ceil(actualScore * 0.6);
            }
            else if(_root.save.arcadeDifficulty[4] == 3)
            {
               actualScore = Math.ceil(actualScore * 1.3);
            }
            else if(_root.save.arcadeDifficulty[4] == 4)
            {
               actualScore = Math.ceil(actualScore * 2);
            }
            _root.arcadeScore += actualScore;
            _root.whackMessage = comment + "\n+" + _root.withComma(actualScore);
            _parent._parent.whackPop._x = _parent._x;
            _parent._parent.whackPop._y = _parent._y;
            _root.showWhack = true;
            frame = 1;
         }
         if(frame == 3)
         {
            timeMul = 10;
            if(_root.save.arcadeDifficulty[4] == 1 && _root.arcadeWhack >= 30)
            {
               timeMul = 3;
            }
            if(_root.save.arcadeDifficulty[4] >= 2 && _root.arcadeWhack >= 120)
            {
               timeMul = 3;
            }
            lifeBonus = Math.ceil(time * timeMul) / 10;
            _root.arcadeLife += lifeBonus;
            _root.whackMessage = "AWESOME!\n+" + lifeBonus + "% Life";
            _parent._parent.whackPop._x = _parent._x;
            _parent._parent.whackPop._y = _parent._y;
            _root.showWhack = true;
            _root.showWhack = true;
            frame = 1;
         }
         if(frame == 5)
         {
            actualScore = Math.floor(50000 * _root.arcadeMultiplier);
            _root.arcadeScore += actualScore;
            _root.whackMessage = "MULTIPLIER: " + (_root.arcadeMultiplier + 1) + "x!\n+" + _root.withComma(actualScore);
            _root.showWhack = true;
            _root.arcadeMultiplier += 1;
            _parent._parent.whackPop._x = _parent._x;
            _parent._parent.whackPop._y = _parent._y;
            _root.showWhack = true;
            frame = 1;
         }
      }
   }
   gotoAndStop(frame);
}
