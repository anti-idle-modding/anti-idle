onClipEvent(load){
   skillID = 2;
   skillLevel = _root.save.arenaSkill[skillID];
   mpCost = Math.floor(700 + skillLevel * 10);
   damagePower = Math.floor(390 + skillLevel * 10 + _root.save.arenaSkill[3] * 7);
   if(_root.save.permaBanPenalty[15] == 3)
   {
      damagePower += 300;
   }
   else if(_root.save.permaBanPenalty[15] == 2)
   {
      damagePower += 180;
   }
   else if(_root.save.permaBanPenalty[15] == 1)
   {
      damagePower += 120;
   }
   if(_root.save.arenaSkill[7] >= 1)
   {
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Ultimate Weapon" || _root.save.inventoryName[_root.save.arenaWeapon] == "Reincarnation Weapon")
      {
         damagePower += 500;
      }
      else if(_root.save.inventoryRange[_root.save.arenaWeapon] == true)
      {
         damagePower += 750;
      }
      else
      {
         damagePower += 1000;
      }
   }
   knockBack = 0;
   skillDelay = Math.floor(210 - skillLevel * 2);
}
