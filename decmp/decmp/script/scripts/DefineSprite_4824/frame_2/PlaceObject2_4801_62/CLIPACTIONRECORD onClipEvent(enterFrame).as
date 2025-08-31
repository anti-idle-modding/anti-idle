onClipEvent(enterFrame){
   currentDuration = _root.spiritInsta;
   if(_root.save.arenaLevel < 120 || _root.save.arenaZone == 82)
   {
      fr = 1;
   }
   else if(_root.arenaDelay > 0)
   {
      fr = 2;
   }
   else if(_root.save.arenaSpirit < mpCost)
   {
      fr = 3;
   }
   else
   {
      fr = 4;
   }
   if(Key.isDown(_root.saveGlobal.keyArenaB) || Key.isDown(89) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && _root.save.arenaSpirit >= mpCost && _root.arenaStun <= 0 && _root.save.arenaLevel >= 120 && _root.save.arenaZone != 82 && _root.arenaBot < 48000)
      {
         _root.spiritInsta = skillDuration;
         _root.house.arena.checkStat();
         _root.arenaStrike = 1;
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower + Math.floor(_root.save.arenaSpirit * spiritMult);
         _root.arenaKnockBack = knockBack;
         if(_root.chargeB >= 4 && _root.house.arena.enemy.enemyID != 0)
         {
            _root.arenaSkillPower = Math.ceil(_root.arenaSkillPower * (1 + _root.save.arenaSkill[65] * 0.06));
            _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.1);
         }
         if(_root.house.arena.enemy.enemyID != 0)
         {
            _root.chargeB = 0;
         }
         _root.save.arenaSpirit -= mpCost;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Instant Kill")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
}
