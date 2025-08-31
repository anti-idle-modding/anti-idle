onClipEvent(enterFrame){
   currentDuration = _root.spiritHeal;
   if(_root.save.arenaLevel < 10)
   {
      fr = 1;
   }
   else if(_root.arenaDelay > 0)
   {
      fr = 2;
   }
   else if(_root.save.arenaMana < mpCost)
   {
      fr = 3;
   }
   else
   {
      fr = 4;
   }
   if(_root.save.arenaAuto == 6 || Key.isDown(_root.saveGlobal.keyArenaA) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
      {
         if(Key.isDown(17))
         {
            _root.save.arenaAuto = 6;
            _root.save.arenaAutoTime = 1800;
         }
         if(Key.isDown(16) && _root.save.arenaAuto == 6)
         {
            _root.save.arenaAuto = 0;
            _root.save.arenaAutoTime = 0;
         }
      }
      if(_root.arenaDelay <= 0 && _root.save.arenaMana >= mpCost && _root.save.arenaLevel >= 10 && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay;
         _root.save.arenaMana -= mpCost;
         if(_root.arenaZombify > 0)
         {
            _root.save.arenaHealth -= Math.floor(_root.maxHealth / 10);
         }
         else
         {
            _root.arenaPoison -= effectReduce;
            _root.arenaWeaken -= effectReduce;
            _root.arenaBlind -= effectReduce;
            _root.arenaSlow -= effectReduce;
            if(_root.spiritHeal < skillDuration)
            {
               _root.spiritHeal = skillDuration;
            }
            _root.house.arena.checkStat();
            if(_root.save.arenaZone == 24)
            {
               hpInc = 0;
            }
            else if(_root.save.arenaZone >= 30 && _root.save.arenaZone <= 43)
            {
               hpInc = Math.floor(_root.maxHealth * healPower / 1000);
            }
            else if(_root.save.arenaZone == 29)
            {
               hpInc = Math.floor(_root.maxHealth * healPower / 1000 * (0.9 + Math.random() * 0.2));
            }
            else
            {
               hpInc = Math.floor(_root.maxHealth * healPower / 100);
            }
            if(_root.save.arenaHealth >= _root.maxHealth)
            {
               hpInc = 0;
            }
            if(hpInc > 0)
            {
               _root.save.arenaHealth += hpInc;
               _root.house.arena.showDamage(hpInc,39423,62.5,70);
            }
         }
         if(_root.house.arena.enemy.zombie == true && _root.house.arena.enemy.enemyID != 0)
         {
            _root.house.arena.dealDamage(damagePower,0,"Heal");
            if(Math.random() < _root.doubleHit / 100)
            {
               _root.house.arena.dealDamage(damagePower,0,"Double Hit");
            }
         }
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Heal")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
   if(_root.save.arenaAuto == 6)
   {
      currentDurationAuto = _root.save.arenaAutoTime;
   }
   else
   {
      currentDurationAuto = 0;
   }
}
