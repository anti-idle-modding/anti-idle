onClipEvent(enterFrame){
   if(tempWeapon != _root.save.arenaWeapon)
   {
      reloadSkill();
   }
   if(isNaN(coolDown))
   {
      coolDown = coolDownMax;
   }
   if(skillName == "Polearm Spirit" && _root.specPolearmCD > 0 && !isNaN(_root.specPolearmCD))
   {
      coolDown -= _root.specPolearmCD;
      _root.specPolearmCD = 0;
   }
   if(_root.save.arenaZone == 24 && coolDown < 1)
   {
      coolDown = 1;
   }
   if(_root.save.arenaZone >= 31 && _root.save.arenaZone <= 42 && coolDown < 1)
   {
      coolDown = 1;
   }
   if(skillName == "MINE!!!!1!" && _root.house.arena.enemy.enemyID != 0 && _root.house.arena.enemy.enemyID != 322 && _root.house.arena.enemy.enemyID != 435 && coolDown < 1)
   {
      coolDown = 1;
   }
   if(coolDown > 0)
   {
      if(_root.house.arena.enemy.enemyID != 0)
      {
         if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
         {
            coolDown -= 0.025;
         }
      }
      else
      {
         coolDown -= 1 / _root.fps;
      }
   }
   if(_root.save.arenaLevel < 70)
   {
      fr = 1;
   }
   else if(coolDown > 0)
   {
      fr = 5;
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
   if(skillName == "Infinity")
   {
      currentDuration = _root.specInfinity;
   }
   else if(skillName == "Pierce")
   {
      currentDuration = _root.specPierce;
   }
   else if(skillName == "Polearm Spirit")
   {
      currentDuration = _root.specPolearm;
   }
   else if(skillName == "Trueshot")
   {
      currentDuration = _root.specTrueshot;
   }
   else if(skillName == "Elemental Sphere")
   {
      currentDuration = _root.specSphere;
   }
   else if(skillName == "Dispel")
   {
      currentDuration = _root.specDispel;
   }
   else if(skillName == "Field of Glory")
   {
      currentDuration = _root.specGlory;
   }
   else if(skillName == "Threaten")
   {
      if(_root.house.arena.enemy.hp > 0)
      {
         currentDuration = _root.house.arena.enemy.threatCount;
      }
      else
      {
         currentDuration = 0;
      }
   }
   if(_root.save.arenaAuto == 4 || Key.isDown(_root.saveGlobal.keyArenaV) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
      {
         if(Key.isDown(17))
         {
            _root.save.arenaAuto = 4;
            _root.save.arenaAutoTime = 1800;
         }
         if(Key.isDown(16) && _root.save.arenaAuto == 4)
         {
            _root.save.arenaAuto = 0;
            _root.save.arenaAutoTime = 0;
         }
      }
      if(_root.arenaDelay <= 0 && _root.save.arenaMana >= mpCost && coolDown <= 0 && _root.save.arenaLevel >= 70 && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower;
         _root.arenaKnockBack = knockBack;
         _root.arenaSkillSpec = skillName;
         _root.arenaSkillSpecLevel = skillLevel;
         if(_root.chargeV >= 4 && (_root.house.arena.enemy.enemyID != 0 || _root.areaFirstPyr == true && _root.save.arenaZone == 20))
         {
            _root.arenaSkillPower = Math.ceil(_root.arenaSkillPower * (1 + _root.save.arenaSkill[65] * 0.06));
            _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.1);
         }
         if(_root.house.arena.enemy.enemyID != 0 || _root.areaFirstPyr == true && _root.save.arenaZone == 20)
         {
            _root.chargeV = 0;
         }
         coolDown = coolDownMax;
         _root.save.arenaMana -= mpCost;
         if(skillName == "Infinity")
         {
            _root.specInfinity = Math.floor(skillLevel * 0.5 + 5);
            _root.house.arena.checkStat();
         }
         else if(skillName == "Pierce")
         {
            _root.specPierce = 4;
         }
         else if(skillName == "Polearm Spirit")
         {
            _root.specPolearm = 60;
            _root.house.arena.checkStat();
         }
         else if(skillName == "Trueshot")
         {
            _root.specTrueshot = 4;
         }
         else if(skillName == "Elemental Sphere")
         {
            _root.specSphere = Math.floor(skillLevel * 0.5 + 5);
            _root.house.arena.checkStat();
         }
         else if(skillName == "Dispel")
         {
            _root.save.arenaHealth = _root.maxHealth;
            _root.specDispel = 7;
            _root.arenaPoison = 0;
            _root.arenaWeaken = 0;
            _root.arenaBlind = 0;
            _root.arenaSlow = 0;
            _root.arenaStun = 0;
            _root.arenaZombify = 0;
            _root.arenaPotionBlock = 0;
            _root.house.arena.checkStat();
         }
         else if(skillName == "MINE!!!!1!")
         {
            if(_root.house.arena.enemy.enemyID == 322 || _root.house.arena.enemy.enemyID == 435)
            {
               _root.specMine = 1;
               _root.house.arena.enemy.hp = 0;
            }
         }
         else if(skillName == "Field of Glory")
         {
            _root.specGlory = Math.floor(skillLevel * 1 + 10);
         }
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Super Knockback")
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == skillName)
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
   if(_root.save.arenaAuto == 4)
   {
      currentDurationAuto = _root.save.arenaAutoTime;
   }
   else
   {
      currentDurationAuto = 0;
   }
}
