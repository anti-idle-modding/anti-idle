onClipEvent(load){
   function openBox()
   {
      _root.save.legendaryBoxOpened += 1;
      possibility = 2 + random(10);
      if(possibility == 3 && Math.random() < 0.5)
      {
         possibility = 1;
      }
      if(_root.save.legendaryBoxOpened <= 11)
      {
         possibility = _root.save.legendaryBoxOpened;
      }
      if(_root.save["mysteryBoxBan" + boxID][possibility] == true)
      {
         possibility = 0;
         rarity = 0;
      }
      if(possibility == 0)
      {
         if(_root.save.blueCoinOvercap < 300)
         {
            _root.save.blueCoin += 50;
         }
         itemName = "50 Blue Coins (refund)";
      }
      if(possibility == 1)
      {
         _root.save.ripoffCard[3] += 1;
         itemName = "1.5x Coin Card";
      }
      if(possibility == 2)
      {
         _root.save.ripoffCard[4] += 1;
         itemName = "Elite Fisher Card";
      }
      if(possibility == 3)
      {
         _root.save.ripoffCard[1] += 1;
         itemName = "1.5x EXP Card";
      }
      if(possibility == 4)
      {
         _root.save.ripoffCard[5] += 1;
         itemName = "Idlebot Card";
      }
      if(possibility == 5)
      {
         _root.save.ripoffCard[6] += 1;
         itemName = "Autoharvest Card";
      }
      if(possibility == 6)
      {
         _root.save.ripoffCard[7] += 1;
         itemName = "Invincibility Stars Card";
      }
      if(possibility == 7)
      {
         _root.save.ripoffCard[8] += 1;
         itemName = "Battery Charger Card";
      }
      if(possibility == 8)
      {
         _root.save.ripoffCard[9] += 1;
         itemName = "Stadium Pro Card";
      }
      if(possibility == 9)
      {
         _root.save.ripoffCard[10] += 1;
         itemName = "TukkunFCG Power User Card";
      }
      if(possibility == 10)
      {
         _root.save.ripoffCard[11] += 1;
         itemName = "Demand Master Card";
      }
      if(possibility == 11)
      {
         _root.save.ripoffCard[12] += 1;
         itemName = "Quick Adventures Card";
      }
      if(doFr < 300)
      {
         _root.dispNews(164,"Gained: " + itemName + "!");
      }
      if(isNaN(_root.save["mysteryBoxCollect" + boxID][possibility]))
      {
         _root.save["mysteryBoxCollect" + boxID][possibility] = 0;
      }
      _root.save["mysteryBoxCollect" + boxID][possibility] += 1;
   }
   boxID = 4;
   doFr = 0;
}
