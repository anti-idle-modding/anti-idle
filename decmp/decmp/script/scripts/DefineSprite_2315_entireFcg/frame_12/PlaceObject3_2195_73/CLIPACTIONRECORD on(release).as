on(release){
   if(_root.save.fcgCash >= _root.save.fcgPack5Cost)
   {
      _root.save.fcgCash -= _root.save.fcgPack5Cost;
      cardtowin = random(_parent.maxcard) + 1;
      if(_root.save.fcgPack5 == 1)
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
      if(_root.save.fcgPack5 == 3)
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
      if(_root.save.fcgPack5 == 4)
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
      if(_root.save.fcgPack5 == 5)
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
      if(_root.save.fcgPack5 == 6)
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
      if(_root.save.fcgPack5 == 7)
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
      if(_root.save.fcgPack5 == 8)
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
      if(_root.save.fcgPack5 == 9)
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
      if(_root.save.fcgPack5 == 10)
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
      if(_root.save.fcgPack5 == 11)
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
      if(_root.save.fcgPack5 == 12)
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
      if(_root.save.fcgPack5 == 13)
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
