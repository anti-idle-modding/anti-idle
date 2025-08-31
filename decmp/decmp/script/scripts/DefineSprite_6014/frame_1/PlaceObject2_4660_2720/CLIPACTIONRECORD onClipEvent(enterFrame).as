onClipEvent(enterFrame){
   if(enemyIn._currentframe != enemyID && enemyID != 0)
   {
      enemyIn.gotoAndStop(enemyID);
      if(_root.save.arenaZone >= 85 && _root.save.arenaZone <= 92 || _root.save.arenaZone == 54 && _root.dungeonChestOpen >= 16)
      {
         gotoAndStop(7);
      }
      else if(ultra3 == true || _root.save.arenaZone == 81)
      {
         gotoAndStop(6);
      }
      else if(ultra2 == true)
      {
         gotoAndStop(5);
      }
      else if(ultra1 == true)
      {
         gotoAndStop(4);
      }
      else if(_root.dungeonDiff == 3 && (_root.save.arenaZone == 53 || _root.save.arenaZone == 54))
      {
         gotoAndStop(4);
      }
      else if(epic == true)
      {
         gotoAndStop(3);
      }
      else if(rare == true)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
      }
   }
   else if(enemyID == 0)
   {
      enemyIn.gotoAndStop(1);
      poison = 0;
      weaken = 0;
      blind = 0;
      stun = 0;
      slow = 0;
      curSpeed = 0;
   }
   if(_parent.kommanderDialog._currentframe == 1)
   {
      approach -= 1 / _root.fps * (_root.spawnSpeed / 100);
   }
   if(approach <= 0 && enemyID == 0)
   {
      selectMonster();
   }
   if(enemyID != 0)
   {
      if(lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
      {
         lifespan += 0.025;
         approachCompensation += _root.areaSpawnReduce * 1 / 4000;
         if(_root.fps < 40)
         {
            approachCompensation += 1 / _root.fps - 0.025;
         }
         if(approachCompensation > _root.areaSpawnReduce * _root.areaSpawn / 100)
         {
            approachCompensation = _root.areaSpawnReduce * _root.areaSpawn / 100;
         }
         magImmune -= 1;
         if(poison > -0.5 && poison <= 0)
         {
            poison -= 0.025;
         }
         if(weaken > -0.5)
         {
            weaken -= 0.025;
         }
         if(blind > -0.5)
         {
            blind -= 0.025;
         }
         if(stun > -0.5)
         {
            stun -= 0.025;
         }
         if(slow > -0.5)
         {
            slow -= 0.025;
         }
         curSpeed += speed / 10;
         if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 3)
         {
            curSpeed += speed / 5;
         }
         if(curSpeed > speed)
         {
            curSpeed = speed;
         }
         if(slow > 0 && curSpeed > speed * 0.5)
         {
            curSpeed = speed * 0.5;
         }
         if(_root.save.inventoryRange[_root.save.arenaWeapon] == false)
         {
            if(curX > 80 + _root.wpRange && curX > 110)
            {
               curSpeed += speed / 10;
            }
            if(_root.monsterMagnet == true)
            {
               if(curX > 80 + _root.wpRange || curX > 200)
               {
                  curSpeed += speed / 5;
               }
               else
               {
                  curSpeed -= speed / 20;
               }
            }
         }
         else if(_root.monsterMagnet == true)
         {
            if(curX > 200)
            {
               curSpeed += speed / 4;
            }
            else
            {
               curSpeed -= speed / 20;
            }
         }
         if(isNaN(curSpeed))
         {
            curSpeed = 0;
         }
         if(stun <= 0 || curSpeed < 0 || curX > 80 + _root.wpRange && _root.save.inventoryRange[_root.save.arenaWeapon] == false)
         {
            curX -= curSpeed;
         }
         if(curX > 500 - _width)
         {
            curX = 500 - _width;
         }
         if(hp > maxhp)
         {
            hp = maxhp;
         }
         if(ultra == true)
         {
            ultraCount += 1;
            if(ultraCount == 1 || ultraCount == 3 || ultraCount == 5)
            {
               _parent.takeDamage(100000,"Cannot Dodge");
            }
            if(ultraCount % 36000 == 0 && ultra3 == true)
            {
               _parent.takeDamage(999999999,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 36000 == 2 && ultra3 == true)
            {
               _parent.takeDamage(999999999,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 1000 == 0 && ultra3 == true)
            {
               _parent.takeDamage(19999998,"Ignore Defense");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 2500 == 0 && ultra3 == true)
            {
               _parent.takeDamage(123456789,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(10);
            }
            else if(ultraCount % 2500 == 0 && ultra2 == true)
            {
               _parent.takeDamage(12345678,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(10);
            }
            else if(ultraCount % 9000 == 0)
            {
               _parent.takeDamage(9999999,"Ignore Defense");
               _root.arenaStun += 1;
               _root.arenaPotionBlock += 1;
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 9000 == 2 && (ultra2 == true || ultra3 == true))
            {
               _parent.takeDamage(9999999,"Ignore Defense");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 1337 == 0 && ultra3 == true)
            {
               _parent.takeDamage(12345678,"Ignore Defense");
               _root.arenaPoison += 15;
               _root.arenaWeaken += 15;
               _root.arenaBlind += 15;
               _root.arenaSlow += 15;
               _root.arenaStun += 3;
               _root.arenaPotionBlock += 3;
               _root.arenaZombify += 3;
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 1337 == 0 && ultra2 == true)
            {
               _parent.takeDamage(12345678,"Ignore Defense");
               _root.arenaPoison += 15;
               _root.arenaWeaken += 15;
               _root.arenaBlind += 15;
               _root.arenaSlow += 15;
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 1337 == 0 && ultra1 == true)
            {
               _parent.takeDamage(1234567,"Ignore Defense");
               _root.arenaPoison += 15;
               _root.arenaBlind += 15;
               _root.arenaSlow += 15;
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(9);
            }
            else if(ultraCount % 400 == 0)
            {
               _parent.takeDamage(22500 * ultraCount,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(10);
            }
            else if(ultraCount % 100 == 0 && ultra3 == true)
            {
               _parent.takeDamage(17500 * ultraCount,"Cannot Dodge");
               rangedAttack._alpha = 100;
               rangedAttack.gotoAndStop(10);
            }
         }
         if(rangeDamage > 0)
         {
            if((curSpeed > 0 || speed == 0) && slow <= 0 && stun <= 0 && _root.specDispel <= 0)
            {
               rangeCount += 1;
               if(_root.worstMoon == true)
               {
                  rangeCount += 1;
               }
               if(_root.apocalypse == true)
               {
                  rangeCount += 1;
               }
               if(_root.save.arenaZone == 78 && lifespan >= 300)
               {
                  rangeCount += 1;
               }
               if(_root.challengeZone == _root.save.arenaZone && _root.challengeDuration > 0)
               {
                  rangeCount += 1;
               }
            }
            rangeDel = 30 + hp / maxhp * 50;
            if(_root.save.arenaRing == 19)
            {
               rangeDel /= 0.7;
            }
            if(rangeCount > rangeDel && hp < maxhp && hp > 0)
            {
               rangeCount = 0;
               if(Math.random() < _root.save.arenaSkill[52] * 0.01 && _root.save.arenaZone != 24 && reflectCombo <= 1)
               {
                  reflectCombo += 1;
                  _parent.takeDamage((0.8 + Math.random() * 0.2) * (_root.save.arenaSkill[52] * 0.02) * rangeDamage,"Heal");
               }
               else
               {
                  reflectCombo = 0;
                  _parent.takeDamage((0.7 + Math.random() * 0.2) * rangeDamage,"Magic");
               }
               rangeDamage = Math.floor(rangeDamage * 1.002);
               accuracy = Math.floor(accuracy * 1.002);
               if(tankMode == true)
               {
                  rangeDamage = Math.floor(rangeDamage * 1.003);
                  accuracy = Math.floor(accuracy * 1.003);
               }
               if(_root.save.arenaZone == 78)
               {
                  if(lifespan >= 300)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.221);
                     accuracy = Math.floor(accuracy * 1.221);
                  }
                  else if(lifespan >= 180)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.061);
                     accuracy = Math.floor(accuracy * 1.061);
                  }
                  else if(lifespan >= 90)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.02);
                     accuracy = Math.floor(accuracy * 1.02);
                  }
                  else if(lifespan >= 30)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.006);
                     accuracy = Math.floor(accuracy * 1.006);
                  }
               }
               else if(_root.save.arenaZone == 52 || _root.save.arenaZone == 68)
               {
                  if(lifespan >= 100)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.221);
                     accuracy = Math.floor(accuracy * 1.221);
                  }
                  else if(lifespan >= 30)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.061);
                     accuracy = Math.floor(accuracy * 1.061);
                  }
                  else if(lifespan >= 10)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.02);
                     accuracy = Math.floor(accuracy * 1.02);
                  }
                  else if(lifespan >= 3)
                  {
                     rangeDamage = Math.floor(rangeDamage * 1.006);
                     accuracy = Math.floor(accuracy * 1.006);
                  }
               }
               if(_root.magicReflect > 0)
               {
                  _root.house.arena.dealDamage(_root.magicReflect,1,"Reflect");
               }
            }
         }
         if(Math.random() < 0.01 && hp < maxhp && heal > 0)
         {
            toHeal = Math.floor((0.8 + Math.random()) * heal);
            if(toHeal > maxhp - hp)
            {
               toHeal = maxhp - hp;
            }
            hp += toHeal;
            _parent.showDamage(toHeal,39423,_X,65);
         }
         if(rampagePct > 0 && hp / maxhp * 100 < rampagePct && hp > 0 && rampage == false)
         {
            rampage = true;
            speed *= 1.2;
            attack = Math.floor(attack * 1.5);
            rangeDamage = Math.floor(rangeDamage * 1.5);
            defense = Math.floor(defense * 1.5);
            accuracy = Math.floor(accuracy * 1.5);
            evasion = Math.floor(evasion * 1.5);
            _parent.showDamage("RAMPAGE!",16711680,_X,65);
         }
         if(rampage2 == false && _root.save.arenaZone == 82)
         {
            if(boss == true && lifespan >= 180)
            {
               rampage2 = true;
               speed *= 1.5;
               attack = Math.floor(attack * 150);
               rangeDamage = Math.floor(rangeDamage * 150);
               defense = Math.floor(defense * 150);
               accuracy = Math.floor(accuracy * 150);
               evasion = Math.floor(evasion * 150);
               _parent.showDamage("RAMPAGE!!!1!",16711680,_X,65);
            }
            else if(boss != true && lifespan >= 120)
            {
               rampage2 = true;
               speed *= 1.5;
               attack = Math.floor(attack * 150);
               rangeDamage = Math.floor(rangeDamage * 150);
               defense = Math.floor(defense * 150);
               accuracy = Math.floor(accuracy * 150);
               evasion = Math.floor(evasion * 150);
               _parent.showDamage("RAMPAGE!!!1!",16711680,_X,65);
            }
         }
         if(rampage2 == false && _root.save.arenaZone == 78 && lifespan >= 300)
         {
            rampage2 = true;
            speed *= 1.3;
         }
         explodeCount += 1;
         if(explode > 0 && explodeCount >= explode * 40 && hp > 0)
         {
            _parent.takeDamage(explodeDamage,"Explode");
            partKilled = (maxhp - hp) / maxhp;
            if(partKilled < 0.2)
            {
               partKilled = 0.2;
            }
            exp = Math.floor(exp * partKilled);
            coin = Math.floor(coin * partKilled);
            pixel = Math.floor(pixel * partKilled);
            hp = 0;
            _parent.showDamage("BOOM!!",16711680,_X,65);
            if(_root.save.arenaZone == 81)
            {
               _root.save.arenaZone = 80;
               _parent.kommanderDialog.gotoAndStop(10);
            }
         }
         if(skill == "Self-Destruct" && hp < maxhp && hp > 0)
         {
            _parent.takeDamage(Math.floor((0.9 + Math.random() * 0.1) * attack * skillLevel),"Explode");
            partKilled = (maxhp - hp) / maxhp;
            if(partKilled < 0.2)
            {
               partKilled = 0.2;
            }
            exp = Math.floor(exp * partKilled);
            coin = Math.floor(coin * partKilled);
            pixel = Math.floor(pixel * partKilled);
            hp = 0;
            _parent.showDamage("BOOM!!",16711680,_X,65);
         }
         if(poison > 0)
         {
            poisonDelay += 1;
            if(poisonDelay >= 20)
            {
               poisonDelay = 0;
               poison -= 1;
               _root.house.arena.dealDamage(_root.poisonDamage,0,"Poison");
            }
         }
      }
      if(_root.save.inventoryRange[_root.save.arenaWeapon] == false && _root.meleeHit != true)
      {
         meleeHitTemp = false;
         if(_root.spiritBreak > 0)
         {
            meleeHitTemp = true;
         }
         if(_root.save.inventoryName[_root.save.arenaWeapon] != "Ultimate Weapon" && _root.save.inventoryName[_root.save.arenaWeapon] != "Reincarnation Weapon")
         {
            if(this.hitTest(_parent.hero.sword))
            {
               meleeHitTemp = true;
            }
         }
         else if(_X <= 205)
         {
            meleeHitTemp = true;
         }
         if(meleeHitTemp == true)
         {
            _root.meleeHit = true;
            _root.arenaCombo += 1;
            if(_root.arenaSkillSpec != "Multislash")
            {
               multiSlash = 0;
            }
            else if(_root.arenaSkillSpec == "Multislash")
            {
               multiSlash += 1;
               if(multiSlash >= 3)
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 2");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 3");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 4");
                  if(_root.chargeC < 4 && multiSlash % 2 == 0)
                  {
                     _root.chargeC += 1;
                  }
               }
               else if(multiSlash == 2)
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 2");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 3");
               }
               else
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack");
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 2");
               }
            }
            if(_root.arenaSkillSpec == "Magnetic Stab")
            {
               kbChance = 0.05 + _root.arenaSkillSpecLevel * 0.005;
               if(boss == true || ultra == true)
               {
                  kbChance *= 0.5;
               }
               if(Math.random() < kbChance && speed > 0 && magImmune <= 0)
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower * 7,_root.arenaKnockBack,"Magnetic");
               }
               else
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower,0);
               }
            }
            else if(_root.arenaSkillSpec == "Pierce")
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Pierce");
            }
            else if(_root.arenaSkillSpec == "Threaten")
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Threaten");
            }
            else if(_root.arenaSkillSpec == "Silence Hammer")
            {
               if(skillLevel >= 0 && boss != true && ultra != true)
               {
                  rampagePct = 0;
                  explodeDamage = 1;
                  skill = "None";
                  skillLevel = -1;
                  rangeDamage = 0;
                  showDamage("SILENCED",16777215,_X + _width / 2,40);
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack);
               }
               else
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower * 3,_root.arenaKnockBack);
               }
            }
            else if(_root.arenaSkillSpec != "Multislash")
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack);
            }
            if(_root.arenaQuickAttack == true)
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack");
               _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 2");
               if(_root.save.arenaSkill[6] >= 1)
               {
                  _root.house.arena.dealDamage(_root.arenaSkillPower,_root.arenaKnockBack,"Quick Attack 3");
               }
               _root.arenaQuickAttack = false;
            }
            if(_root.spiritDouble > 0)
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower * 2,0,"Double Hit");
            }
            else if(Math.random() < _root.doubleHit / 100)
            {
               _root.house.arena.dealDamage(_root.arenaSkillPower,0,"Double Hit");
            }
         }
      }
      if(speed == 0)
      {
         curX = 100;
         if(_root.save.arenaZone == 61)
         {
            curX = 200;
         }
         if(_root.save.arenaZone == 24 && _root.areaDefendStage == 4)
         {
            curX = 320;
         }
      }
      if(curX < 80)
      {
         if(Math.random() < _root.save.arenaSkill[66] * 0.015 && _root.save.arenaZone != 24 && absorbCombo <= 1)
         {
            absorbCombo += 1;
            _parent.takeDamage((0.8 + Math.random() * 0.2) * (_root.save.arenaSkill[66] * 0.02) * attack,"Heal");
         }
         else
         {
            absorbCombo = 0;
            _parent.takeDamage((0.8 + Math.random() * 0.2) * attack);
         }
         if(boss != true)
         {
            attack = Math.floor(attack * 1.01);
            accuracy = Math.floor(accuracy * 1.01);
            if(tankMode == true)
            {
               attack = Math.floor(attack * 1.015);
               accuracy = Math.floor(accuracy * 1.015);
            }
            if(_root.save.arenaZone == 78)
            {
               if(lifespan >= 300)
               {
                  attack = Math.floor(attack * 2.678);
                  accuracy = Math.floor(accuracy * 2.678);
               }
               else if(lifespan >= 180)
               {
                  attack = Math.floor(attack * 1.335);
                  accuracy = Math.floor(accuracy * 1.335);
               }
               else if(lifespan >= 90)
               {
                  attack = Math.floor(attack * 1.094);
                  accuracy = Math.floor(accuracy * 1.094);
               }
               else if(lifespan >= 30)
               {
                  attack = Math.floor(attack * 1.02);
                  accuracy = Math.floor(accuracy * 1.02);
               }
            }
            else if(_root.save.arenaZone == 52 || _root.save.arenaZone == 68)
            {
               if(lifespan >= 100)
               {
                  attack = Math.floor(attack * 2.678);
                  accuracy = Math.floor(accuracy * 2.678);
               }
               else if(lifespan >= 30)
               {
                  attack = Math.floor(attack * 1.335);
                  accuracy = Math.floor(accuracy * 1.335);
               }
               else if(lifespan >= 10)
               {
                  attack = Math.floor(attack * 1.094);
                  accuracy = Math.floor(accuracy * 1.094);
               }
               else if(lifespan >= 3)
               {
                  attack = Math.floor(attack * 1.02);
                  accuracy = Math.floor(accuracy * 1.02);
               }
            }
         }
         else
         {
            attack = Math.floor(attack * 1.005);
            accuracy = Math.floor(accuracy * 1.005);
            if(tankMode == true)
            {
               attack = Math.floor(attack * 1.007);
               accuracy = Math.floor(accuracy * 1.007);
            }
            if(_root.save.arenaZone == 78)
            {
               if(lifespan >= 300)
               {
                  attack = Math.floor(attack * 1.638);
                  accuracy = Math.floor(accuracy * 1.638);
               }
               else if(lifespan >= 180)
               {
                  attack = Math.floor(attack * 1.156);
                  accuracy = Math.floor(accuracy * 1.156);
               }
               else if(lifespan >= 90)
               {
                  attack = Math.floor(attack * 1.046);
                  accuracy = Math.floor(accuracy * 1.046);
               }
               else if(lifespan >= 30)
               {
                  attack = Math.floor(attack * 1.01);
                  accuracy = Math.floor(accuracy * 1.01);
               }
            }
            else if(_root.save.arenaZone == 52 || _root.save.arenaZone == 68)
            {
               if(lifespan >= 100)
               {
                  attack = Math.floor(attack * 1.638);
                  accuracy = Math.floor(accuracy * 1.638);
               }
               else if(lifespan >= 30)
               {
                  attack = Math.floor(attack * 1.156);
                  accuracy = Math.floor(accuracy * 1.156);
               }
               else if(lifespan >= 10)
               {
                  attack = Math.floor(attack * 1.046);
                  accuracy = Math.floor(accuracy * 1.046);
               }
               else if(lifespan >= 3)
               {
                  attack = Math.floor(attack * 1.01);
                  accuracy = Math.floor(accuracy * 1.01);
               }
            }
         }
         _root.house.arena.dealDamage(_root.damageReflect,0,"Reflect");
         curX = 81;
         curSpeed = -9;
      }
      if(hp <= 0)
      {
         death();
      }
      if(enemyID == 440)
      {
         curX = 100;
      }
      if(_root.save.arenaZone == 61 && enemyID != 444)
      {
         curX = 200;
      }
      _X = Math.ceil(curX / 5) * 5;
   }
}
