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
         stadiumHero.fastDur = 1;
      }
      if(itemName == "Energy Drain")
      {
         i = 1;
         while(i <= 4)
         {
            this["stadiumEnemy" + i].energy -= 6;
            if(this["stadiumEnemy" + i].energy < 0)
            {
               this["stadiumEnemy" + i].energy = 0;
            }
            i++;
         }
         stadiumHero.energy += 24;
      }
      if(itemName == "Slow")
      {
         i = 1;
         while(i <= 4)
         {
            this["stadiumEnemy" + i].slowDur = 2;
            i++;
         }
      }
      if(itemName == "Stun")
      {
         i = 1;
         while(i <= 4)
         {
            this["stadiumEnemy" + i].stunDur = 1;
            i++;
         }
      }
      if(itemName == "Darkness")
      {
         i = 1;
         while(i <= 4)
         {
            this["stadiumEnemy" + i].darkDur = 3;
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
         this["stadiumEnemy" + user].fastDur = 1;
      }
      if(itemName == "Energy Drain")
      {
         i = 1;
         while(i <= 4)
         {
            if(i != user)
            {
               this["stadiumEnemy" + i].energy -= 6;
               if(this["stadiumEnemy" + i].energy < 0)
               {
                  this["stadiumEnemy" + i].energy = 0;
               }
            }
            i++;
         }
         stadiumHero.energy -= 6;
         if(stadiumHero.energy < 0)
         {
            stadiumHero.energy = 0;
         }
         this["stadiumEnemy" + user].energy += 24;
      }
      if(itemName == "Slow")
      {
         i = 1;
         while(i <= 4)
         {
            if(i != user)
            {
               this["stadiumEnemy" + i].slowDur = 2;
            }
            i++;
         }
         stadiumHero.slowDur = 2;
      }
      if(itemName == "Stun")
      {
         i = 1;
         while(i <= 4)
         {
            if(i != user)
            {
               this["stadiumEnemy" + i].stunDur = 1;
            }
            i++;
         }
         stadiumHero.stunDur = 1;
      }
      if(itemName == "Darkness")
      {
         i = 1;
         while(i <= 4)
         {
            if(i != user)
            {
               this["stadiumEnemy" + i].darkDur = 3;
            }
            i++;
         }
         stadiumHero.darkDur = 3;
      }
      if(itemName != "")
      {
         _parent.breakStadium(this["stadiumEnemy" + user].mehName + " used " + itemName + "!");
         _root.dispNews(100,this["stadiumEnemy" + user].mehName + " used " + itemName + "!");
      }
      this["stadiumEnemy" + user].curItem = "";
   }
}
