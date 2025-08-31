onClipEvent(enterFrame){
   if(_root.save.autoFight == false)
   {
      fr = 2;
   }
   else
   {
      fr = 4;
   }
   if(_root.save.autoFight == true && _parent._parent.enemy.enemyID != 0 && _parent._parent.enemy.lifespan > 0.2)
   {
      if(_root.arenaDelay <= 0 && _root.save.arenaMana >= mpCost && _root.arenaStun <= 0)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower;
         _root.arenaKnockBack = knockBack;
         _root.save.arenaMana -= mpCost;
      }
   }
}
