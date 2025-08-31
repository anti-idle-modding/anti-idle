onClipEvent(load){
   function openBox()
   {
      _root.save.progBoxCount += 1;
      if(_root.save.progBoxCount >= 2500)
      {
         _root.save.progBoxCount = 0;
         _root.save.megaBoostPotion += 1;
         _root.dispNews(183,"You have gained 1 Mega Boost Potion!");
      }
      if(Math.random() < 0.001)
      {
         possibility = 1;
         rarity = 3;
      }
      else if(Math.random() < 0.003)
      {
         possibility = 2;
         rarity = 2;
      }
      else if(Math.random() < 0.006)
      {
         possibility = 3;
         rarity = 2;
      }
      else if(Math.random() < 0.02)
      {
         possibility = 4;
         rarity = 1;
      }
      else if(Math.random() < 0.05)
      {
         possibility = 5;
         rarity = 1;
      }
      else if(Math.random() < 0.1)
      {
         possibility = 6;
         rarity = 1;
      }
      else
      {
         possibility = 7;
         rarity = 1;
      }
      if(_root.save["mysteryBoxBan" + boxID][possibility] == true)
      {
         possibility = 0;
         rarity = 0;
      }
      if(possibility == 0)
      {
         _root.save.greenCoin += 3000;
         itemName = "3,000 Green Coins (refund)";
      }
      if(possibility == 1)
      {
         _root.progPercent += 500000;
         itemName = "5,000 Insta-Progress";
      }
      if(possibility == 2)
      {
         _root.progPercent += 75000;
         itemName = "750 Insta-Progress";
      }
      if(possibility == 3)
      {
         _root.progPercent += 25000;
         itemName = "250 Insta-Progress";
      }
      if(possibility == 4)
      {
         _root.progPercent += 10000;
         itemName = "100 Insta-Progress";
      }
      if(possibility == 5)
      {
         _root.progPercent += 5000;
         itemName = "50 Insta-Progress";
      }
      if(possibility == 6)
      {
         _root.progPercent += 2500;
         itemName = "25 Insta-Progress";
      }
      if(possibility == 7)
      {
         _root.progPercent += 1000;
         itemName = "10 Insta-Progress";
      }
      if(doFr < 300)
      {
         _root.dispNews(124 + rarity,"Gained: " + itemName + "!");
      }
      if(isNaN(_root.save["mysteryBoxCollect" + boxID][possibility]))
      {
         _root.save["mysteryBoxCollect" + boxID][possibility] = 0;
      }
      _root.save["mysteryBoxCollect" + boxID][possibility] += 1;
   }
   progBoxLimit = 1000000;
   boxID = 5;
   doFr = 0;
}
