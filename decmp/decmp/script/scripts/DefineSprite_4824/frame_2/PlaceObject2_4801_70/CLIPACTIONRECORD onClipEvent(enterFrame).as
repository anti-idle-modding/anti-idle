onClipEvent(enterFrame){
   if(_root.arenaDelay > 0)
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
   if(_root.save.arenaAuto == 1 || Key.isDown(_root.saveGlobal.keyArenaZ) || Key.isDown(89) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
      {
         if(Key.isDown(17))
         {
            _root.save.arenaAuto = 1;
            _root.save.arenaAutoTime = 1800;
         }
         if(Key.isDown(16) && _root.save.arenaAuto == 1)
         {
            _root.save.arenaAuto = 0;
            _root.save.arenaAutoTime = 0;
         }
      }
      if(_root.arenaDelay <= 0 && _root.save.arenaSpirit >= mpCost && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower + Math.floor(_root.save.arenaSpirit * spiritMult);
         _root.arenaKnockBack = knockBack;
         _root.save.arenaSpirit -= mpCost;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Basic Attack")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
   if(_root.save.arenaAuto == 1)
   {
      currentDurationAuto = _root.save.arenaAutoTime;
   }
   else
   {
      currentDurationAuto = 0;
   }
}
