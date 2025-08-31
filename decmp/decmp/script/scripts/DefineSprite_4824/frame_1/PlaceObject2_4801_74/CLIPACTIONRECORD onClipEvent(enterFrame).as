onClipEvent(enterFrame){
   skillLevel = _root.save.arenaSkill[skillID];
   damagePower = Math.floor(4000 + skillLevel * 200);
   currentDuration = _root.spiritUnleash;
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
   if(skillLevel <= 0)
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
   else
   {
      fr = 4;
   }
   if(Key.isDown(_root.saveGlobal.keyArenaD) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && coolDown <= 0 && skillLevel > 0 && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower;
         _root.arenaKnockBack = 4;
         _root.spiritUnleash = 10;
         _root.house.arena.checkStat();
         coolDown = 60 - skillLevel;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "OM NOM NOM")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
}
