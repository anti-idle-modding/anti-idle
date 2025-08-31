on(release){
   if(_root.save.fcgCash >= _root.save.fcgPack4Cost)
   {
      _root.save.fcgCash -= _root.save.fcgPack4Cost;
      cardtowin = random(_parent.maxcard) + 1;
      if(_root.save.fcgPack4 == 1)
      {
         k = 1;
         while(k <= 50)
         {
            if(cardtowin / 2 == Math.floor(cardtowin / 2) || _root.cardList[cardtowin].upgraded != 0)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 3)
      {
         k = 1;
         while(k <= 50)
         {
            if(cardtowin / 2 == Math.floor(cardtowin / 2))
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 4)
      {
         k = 1;
         while(k <= 50)
         {
            if(cardtowin / 2 != Math.floor(cardtowin / 2))
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 5)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].upgraded < 2)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 6)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].cost != Infinity)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 7)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].type != "Monster")
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 8)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].type == "Monster")
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 9)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].quanta != 1)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 10)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].quanta != 2)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 11)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].quanta != 3)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 12)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].quanta != 4)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      if(_root.save.fcgPack4 == 13)
      {
         k = 1;
         while(k <= 50)
         {
            if(_root.cardList[cardtowin].quanta != 5)
            {
               cardtowin = random(_parent.maxcard) + 1;
            }
            k++;
         }
      }
      _root.save.fcgOwned[cardtowin] += 1;
      _root.cardspin = cardtowin;
      _parent.wonCard.gotoAndStop(2);
      reset();
   }
}
