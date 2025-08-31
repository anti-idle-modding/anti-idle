stop();
xPos = 500;
onEnterFrame = function()
{
   if(_root.house.arena.enemy.enemyID == 0 || _root.house.arena.enemy.hp < 0 || _root.house.arena.enemy.lifespan < 1 || _root.save.featureBestiary != true || _root.save.arenaDisplayMonsterStats != true || _root.save.arenaZone == 52 || _root.save.arenaZone == 68 || _root.save.arenaZone == 81 || _root.save.arenaZone == 82)
   {
      if(_currentframe != 2)
      {
         gotoAndStop(2);
      }
      xPos = 500;
      _X = 500;
   }
   else
   {
      if(_currentframe != 3)
      {
         gotoAndStop(3);
      }
      if(xPos > 370)
      {
         xPos -= 26;
         _X = xPos;
      }
      nameText.text = _root.house.arena.enemy.name;
      hpText.text = _root.withComma(_root.house.arena.enemy.hp);
      attText.text = _root.withComma(Math.max(_root.house.arena.enemy.attack,_root.house.arena.enemy.rangeDamage));
      if(Math.max(_root.house.arena.enemy.attack,_root.house.arena.enemy.rangeDamage) > _root.damageResist * 1.4)
      {
         attText.textColor = 16711680;
      }
      else if(Math.max(_root.house.arena.enemy.attack,_root.house.arena.enemy.rangeDamage) > _root.damageResist * 1.1)
      {
         attText.textColor = 16750848;
      }
      else if(Math.max(_root.house.arena.enemy.attack,_root.house.arena.enemy.rangeDamage) < _root.damageResist * 0.8)
      {
         attText.textColor = 16776960;
      }
      else
      {
         attText.textColor = 16711680;
      }
      defText.text = _root.withComma(_root.house.arena.enemy.defense);
      if(_root.house.arena.enemy.defense > _root.minDamage * 10)
      {
         defText.textColor = 16711680;
      }
      else if(_root.house.arena.enemy.defense > _root.minDamage * 4)
      {
         defText.textColor = 16750848;
      }
      else if(_root.house.arena.enemy.defense < _root.minDamage * 0.8)
      {
         defText.textColor = 16776960;
      }
      else
      {
         defText.textColor = 16711680;
      }
      accText.text = _root.withComma(_root.house.arena.enemy.accuracy);
      if(_root.house.arena.enemy.accuracy > _root.evasion * 2)
      {
         accText.textColor = 16711680;
      }
      else if(_root.house.arena.enemy.accuracy > _root.evasion * 1.2)
      {
         accText.textColor = 16750848;
      }
      else if(_root.house.arena.enemy.accuracy < _root.evasion * 0.6)
      {
         accText.textColor = 16776960;
      }
      else
      {
         accText.textColor = 16711680;
      }
      evaText.text = _root.withComma(_root.house.arena.enemy.evasion);
      if(_root.house.arena.enemy.evasion > _root.accuracy * 2)
      {
         evaText.textColor = 16711680;
      }
      else if(_root.house.arena.enemy.evasion > _root.accuracy * 1.2)
      {
         evaText.textColor = 16750848;
      }
      else if(_root.house.arena.enemy.evasion < _root.accuracy * 0.6)
      {
         evaText.textColor = 16776960;
      }
      else
      {
         evaText.textColor = 16711680;
      }
   }
};
