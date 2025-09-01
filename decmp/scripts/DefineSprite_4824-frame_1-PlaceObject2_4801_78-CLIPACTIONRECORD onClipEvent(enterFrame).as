onClipEvent(enterFrame){
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
   if(Key.isDown(_root.saveGlobal.keyArenaF) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && coolDown <= 0 && skillLevel > 0 && _root.arenaStun <= 0 && _root.house.arena.enemy.enemyID != 0 && _root.arenaBot < 48000)
      {
         _root.house.arena.dealDamage(damagePower,8,"Roundhouse Kick");
         if(Math.random() < _root.doubleHit / 100)
         {
            _root.house.arena.dealDamage(damagePower,0,"Double Hit");
         }
         if(_root.save.arenaBuffType == 0)
         {
            _root.save.arenaBuffType = 1;
            _root.save.arenaBuffDuration = 30;
         }
         else if(_root.save.arenaBuffType < 4)
         {
            _root.save.arenaBuffDuration += 6;
         }
         _root.house.arena.checkStat();
         coolDown = 150 - skillLevel * 2;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Roundhouse Kick")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
}
