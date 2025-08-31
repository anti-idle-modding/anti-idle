function sortCards(sortType)
{
   cardcount = 0;
   i = 1;
   while(i <= maxcard)
   {
      _root["cardx_" + i] = 0;
      i++;
   }
   if(sortType == 1)
   {
      k = 1;
      while(k <= 5)
      {
         i = 1;
         while(i <= maxcard)
         {
            if(_root.cardList[i].quanta == k && _root.cardList[i].type == "Monster")
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = i;
            }
            i++;
         }
         i = 1;
         while(i <= maxcard)
         {
            if(_root.cardList[i].quanta == k && _root.cardList[i].type != "Monster")
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = i;
            }
            i++;
         }
         k++;
      }
   }
   else if(sortType == 2)
   {
      k = 1;
      while(k <= 5)
      {
         l = 0;
         while(l <= 40)
         {
            i = 1;
            while(i <= maxcard)
            {
               if(_root.cardList[i].quanta == k && _root.cardList[i].req == l)
               {
                  cardcount += 1;
                  _root["cardx_" + cardcount] = i;
               }
               i++;
            }
            l++;
         }
         k++;
      }
   }
   else if(sortType == 3)
   {
      k = 1;
      while(k <= 5)
      {
         i = 1;
         while(i <= maxcard)
         {
            if(_root.cardList[i].quanta == k && _root.cardList[i].type == "Monster")
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = i;
            }
            i++;
         }
         k++;
      }
      k = 1;
      while(k <= 5)
      {
         i = 1;
         while(i <= maxcard)
         {
            if(_root.cardList[i].quanta == k && _root.cardList[i].type != "Monster")
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = i;
            }
            i++;
         }
         k++;
      }
   }
   else if(sortType == 4)
   {
      l = 0;
      while(l <= 40)
      {
         k = 1;
         while(k <= 5)
         {
            i = 1;
            while(i <= maxcard)
            {
               if(_root.cardList[i].quanta == k && _root.cardList[i].req == l)
               {
                  cardcount += 1;
                  _root["cardx_" + cardcount] = i;
               }
               i++;
            }
            k++;
         }
         l++;
      }
   }
   else if(sortType == 5)
   {
      k = 50;
      while(k <= 5000)
      {
         i = 1;
         while(i <= maxcard)
         {
            if(_root.cardList[i].cost == k)
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = i;
            }
            i++;
         }
         k += 25;
      }
      k = 10000;
      while(k <= 30000)
      {
         i = 1;
         while(i <= maxcard)
         {
            if(_root.cardList[i].cost == k)
            {
               cardcount += 1;
               _root["cardx_" + cardcount] = i;
            }
            i++;
         }
         k += 10000;
      }
      i = 1;
      while(i <= maxcard)
      {
         if(_root.cardList[i].cost == Infinity)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = i;
         }
         i++;
      }
   }
   else if(sortType == 6)
   {
      minCard = 0;
      minText = "";
      sel = new Array();
      i = 1;
      while(i <= maxcard)
      {
         sel[i] = false;
         i++;
      }
      while(minCard != -1)
      {
         minCard = -1;
         minText = "";
         i = 1;
         while(i <= maxcard)
         {
            if(sel[i] != true && _root.cardList[i].name < minText)
            {
               minCard = i;
               minText = _root.cardList[i].name;
            }
            i++;
         }
         if(minCard != -1)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = minCard;
            sel[minCard] = true;
         }
      }
   }
   else if(sortType == 9)
   {
      i = 1;
      while(i <= maxcard)
      {
         cardcount += 1;
         _root["cardx_" + cardcount] = i;
         i++;
      }
   }
   else if(sortType == 7)
   {
      i = 1;
      while(i <= maxcard)
      {
         if(_root.save.fcgDeck[i] > 0)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = i;
         }
         i++;
      }
      i = 1;
      while(i <= maxcard)
      {
         if(_root.save.fcgDeck[i] <= 0)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = i;
         }
         i++;
      }
   }
   else if(sortType == 8)
   {
      i = 1;
      while(i <= maxcard)
      {
         if(_root.save.fcgOwned[i] > 0)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = i;
         }
         i++;
      }
      i = 1;
      while(i <= maxcard)
      {
         if(_root.save.fcgOwned[i] <= 0)
         {
            cardcount += 1;
            _root["cardx_" + cardcount] = i;
         }
         i++;
      }
   }
}
_root.bazaarpage = 1;
_root.fcg_dep = 1;
delay = 40;
i = 1;
while(i <= maxcard)
{
   if(_root.save.fcgOwned[i] > 100)
   {
      _root.save.fcgOwned[i] = 100;
   }
   i++;
}
sortCards(1);
_root.sorttype = 1;
onEnterFrame = function()
{
   delay += 1;
   if(delay > 40)
   {
      delay = 0;
      _root.deckcodetukkun = "";
      if(_root.sorttype == 7)
      {
         sortCards(7);
      }
      tempCard = 0;
      myDeckString = "";
      i = 1;
      while(i <= maxcard)
      {
         if(_root.save.fcgDeck[i] > 0)
         {
            if(tempCard == 0)
            {
               tempCard = 1;
               myDeckString += _root.save.fcgDeck[i] + "," + i;
            }
            else
            {
               myDeckString += "," + _root.save.fcgDeck[i] + "," + i;
            }
         }
         i++;
      }
      myDeckArray = myDeckString.split(",");
      myDeckArray2 = myDeckString.replace(",",".");
      _root.deckcodetukkun += "PvP / Deck Load Code: \n" + myDeckArray2;
      _root.deckcodetukkun += "\n\nDeck List:";
      i = 1;
      while(i <= maxcard)
      {
         if(_root.save.fcgDeck[i] > 0)
         {
            if(_root.cardList[i].upgraded == 0)
            {
               _root.deckcodetukkun += "\n" + _root.save.fcgDeck[i] + " " + _root.cardList[i].name;
            }
            if(_root.cardList[i].upgraded == 1)
            {
               _root.deckcodetukkun += "\n" + _root.save.fcgDeck[i] + " (Upgraded) " + _root.cardList[i].name;
            }
            if(_root.cardList[i].upgraded == 2)
            {
               _root.deckcodetukkun += "\n" + _root.save.fcgDeck[i] + " (Rare) " + _root.cardList[i].name;
            }
            if(_root.cardList[i].upgraded == 3)
            {
               _root.deckcodetukkun += "\n" + _root.save.fcgDeck[i] + " (Rare/Upgraded) " + _root.cardList[i].name;
            }
         }
         i++;
      }
      _root.deckcodetukkun += "\n\nGame Script:";
      _root.deckcodetukkun += "\naddNewDeck (\'" + _root.kongregate_username + "\', [" + myDeckArray + "])";
   }
   cid.text = _root.save.fcgTotalCards;
   fcgpt.text = _root.withComma(_root.save.fcgCash);
};
