function useItem(itemName, user)
{
   if(user == 0)
   {
      if(_root.save.questType == "Use Item")
      {
         if(_root.save.questSubtype == "Any" && itemName != "")
         {
            _root.save.questCount += 1;
         }
      }
      if(itemName == "Speed Boost")
      {
         stadiumHero.xspeed *= 1.8;
         stadiumHero.fastDur = 2;
      }
      if(itemName == "Energy Drain")
      {
         i = 1;
         while(i <= 4)
         {
            this["stadiumEnemy" + i].energy -= 10;
            if(this["stadiumEnemy" + i].energy < 0)
            {
               this["stadiumEnemy" + i].energy = 0;
            }
            i++;
         }
         stadiumHero.energy += 40;
      }
      if(itemName == "Slow")
      {
         i = 1;
         while(i <= 4)
         {
            this["stadiumEnemy" + i].slowDur = 4;
            i++;
         }
      }
      if(itemName == "Stun")
      {
         i = 1;
         while(i <= 4)
         {
            this["stadiumEnemy" + i].stunDur = 2;
            i++;
         }
      }
      if(itemName == "Darkness")
      {
         i = 1;
         while(i <= 4)
         {
            this["stadiumEnemy" + i].darkDur = 5;
            i++;
         }
      }
      if(itemName != "")
      {
         kongName = _root.kongregate_username;
         if(kongName == undefined || kongName == "Guest")
         {
            kongName = _root.save.displayName;
         }
         _parent.breakStadium(kongName + " used " + itemName + "!");
         _root.dispNews(99,kongName + " used " + itemName + "!");
      }
      stadiumHero.curItem = "";
   }
   else
   {
      if(itemName == "Speed Boost")
      {
         this["stadiumEnemy" + user].xspeed *= 1.8;
         this["stadiumEnemy" + user].fastDur = 3;
      }
      if(itemName == "Energy Drain")
      {
         i = 1;
         while(i <= 4)
         {
            if(i != user)
            {
               this["stadiumEnemy" + i].energy -= 10;
               if(this["stadiumEnemy" + i].energy < 0)
               {
                  this["stadiumEnemy" + i].energy = 0;
               }
            }
            i++;
         }
         stadiumHero.energy -= 10;
         if(stadiumHero.energy < 0)
         {
            stadiumHero.energy = 0;
         }
         this["stadiumEnemy" + user].energy += 40;
      }
      if(itemName == "Slow")
      {
         i = 1;
         while(i <= 4)
         {
            if(i != user)
            {
               this["stadiumEnemy" + i].slowDur = 4;
            }
            i++;
         }
         stadiumHero.slowDur = 4;
      }
      if(itemName == "Stun")
      {
         i = 1;
         while(i <= 4)
         {
            if(i != user)
            {
               this["stadiumEnemy" + i].stunDur = 2;
            }
            i++;
         }
         stadiumHero.stunDur = 2;
      }
      if(itemName == "Darkness")
      {
         i = 1;
         while(i <= 4)
         {
            if(i != user)
            {
               this["stadiumEnemy" + i].darkDur = 5;
            }
            i++;
         }
         stadiumHero.darkDur = 5;
      }
      if(itemName != "")
      {
         _parent.breakStadium(this["stadiumEnemy" + user].mehName + " used " + itemName + "!");
         _root.dispNews(100,this["stadiumEnemy" + user].mehName + " used " + itemName + "!");
      }
      this["stadiumEnemy" + user].curItem = "";
   }
}
function checkLow()
{
   _root.lowPlayer = -1;
   if(Math.random() > stadiumHero.health / 20 && stadiumHero.health > 0)
   {
      _root.lowPlayer = 0;
   }
   else
   {
      k = 1;
      while(k <= 4)
      {
         if(Math.random() > this["stadiumEnemy" + k].health / 20 && _root.lowPlayer == -1 && this["stadiumEnemy" + k].health > 0)
         {
            _root.lowPlayer = k;
         }
         k++;
      }
   }
}
_root.summonCount = 0;
_root.antiLag = 0;
checkLow();
onEnterFrame = function()
{
   if(Math.random() < 0.01)
   {
      checkLow();
   }
   if(_root.antiLag > 20)
   {
      _root.antiLag = 0;
   }
};
