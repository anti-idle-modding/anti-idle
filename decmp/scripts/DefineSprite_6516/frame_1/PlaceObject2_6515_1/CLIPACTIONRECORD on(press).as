on(press){
   if(_parent._parent.whackMonster != true)
   {
      if(frame == 1)
      {
         _root.whackMessage = "OOPS!\n-3% Life";
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         _root.arcadeLife -= 3;
      }
      if(frame == 2)
      {
         _root.arcadeWhack += 1;
         oriScore = Math.floor(time * 50);
         if(_parent._parent.isTouchscreen != true)
         {
            oriScore += 6;
         }
         if(oriScore >= 232)
         {
            comment = "PERFECT!!";
            rank = 6;
         }
         else if(oriScore >= 225)
         {
            comment = "PERFECT!";
            rank = 4.5;
         }
         else if(oriScore >= 200)
         {
            comment = "GREAT!";
            rank = 3;
         }
         else if(oriScore >= 175)
         {
            comment = "GOOD!";
            rank = 2;
         }
         else
         {
            comment = "OK!";
            rank = 1;
         }
         if(comment == "GOOD!")
         {
            _root.arcadePerfectStreak = 0;
            progToEarn = 10 + _root.arcadeMultiplier * 2;
            _root.progPercent += progToEarn;
            _root.dispNews(84,"[Whack-a-greg] Good! (+" + progToEarn + "% Progress)");
         }
         else if(comment == "GREAT!")
         {
            _root.arcadePerfectStreak = 0;
            progToEarn = 25 + _root.arcadeMultiplier * 5;
            _root.progPercent += progToEarn;
            _root.dispNews(85,"[Whack-a-greg] Great! (+" + progToEarn + "% Progress)");
         }
         else if(comment == "PERFECT!")
         {
            _root.arcadePerfectStreak = 0;
            progToEarn = 50 + _root.arcadeMultiplier * 10;
            _root.progPercent += progToEarn;
            _root.dispNews(86,"[Whack-a-greg] Perfect! (+" + progToEarn + "% Progress)");
         }
         else if(comment == "PERFECT!!")
         {
            _root.arcadePerfectStreak += 1;
            progToEarn = 50 + _root.arcadeMultiplier * 10;
            _root.progPercent += progToEarn;
            _root.dispNews(86,"[Whack-a-greg] Perfect! (+" + progToEarn + "% Progress)");
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
         if(_root.save.rankedMode != true)
         {
            lifeBonus = Math.ceil(time * 10 + _root.save.unrankedPower[18] * 2) / 10;
         }
         if(_parent._parent.isTouchscreen != true)
         {
            lifeBonus += 0.2;
         }
         _root.arcadeLife += lifeBonus;
         _root.whackMessage = "AWESOME!\n+" + lifeBonus + "% Life";
         progToEarn = 100 + _root.arcadeMultiplier * 20;
         _root.progPercent += progToEarn;
         _root.dispNews(86,"[Whack-a-greg] Awesome! (+" + progToEarn + "% Progress)");
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         frame = 1;
      }
      if(frame == 4)
      {
         _root.whackMessage = "OOPS!\n-5% Life";
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         _root.arcadeLife -= 5;
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
         frame = 1;
      }
      if(frame == 6)
      {
         _root.gainWhiteCoin(1);
         _root.whackMessage = "\nWHITE COIN!";
         _root.showWhack = true;
         frame = 1;
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
      }
      if(frame == 7)
      {
         _root.whackMessage = "OOPS!\n-5% Life";
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         _root.arcadeLife -= 5;
         frame = 1;
      }
   }
}
