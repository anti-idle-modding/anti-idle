onClipEvent(load){
   function openBox()
   {
      _root.save.ripoffCard[1] += 1;
      _root.save.ripoffCard[3] += 1;
      if(_root.save.greenCoinOvercap < 300)
      {
         _root.save.greenCoin += 100000 * levelMult;
      }
      if(_root.save.blueCoinOvercap < 300)
      {
         _root.save.blueCoin += 100 * levelMult;
      }
      _root.gainWhiteCoin(10);
      _root.save.gardenPoint += 1000;
      _root.save.gardenFertilizer += 2;
      if(_root.save.bannedB == 0 || _root.save.arenaLevel >= 500)
      {
         _root.save.arenaExp += 100000 * levelMult;
      }
      _root.save.arenaPixel += 1000000 * levelMult;
      _root.save.arenaCraft += 100000 * levelMult;
      _root.save.arenaEnhancerFragment += 1000;
      _root.save.arenaSuperiorCraft += 100;
      _root.save.arenaUnobtainium += 10;
      _root.save.buttonPurple += 100;
      _root.save.arcade100kMedal += 100;
      _root.save.stadiumToken += 1000;
      _root.save.fcgCash += 1000;
      _root.save.awesomeRefill += 2;
      _root.save.careerPotion += 2;
      _root.save.boostPotion += 2;
      possibility = 1 + random(6);
      if(possibility == 1)
      {
         _root.getArenaEnhancer("Weapon Unique Enhancer",391,1,0,100,"","","",10,106,50000,604800000,"Weapon Unique Enhancer Lv. 1","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.\n\nSupply Crate Reward");
         itemName = "Weapon Unique Enhancer Lv. 1";
      }
      else if(possibility == 2)
      {
         _root.getArenaEnhancer("Armor Unique Enhancer",401,1,0,100,"","","",10,106,50000,604800000,"Armor Unique Enhancer Lv. 1","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.\n\nSupply Crate Reward");
         itemName = "Armor Unique Enhancer Lv. 1";
      }
      else if(possibility == 3)
      {
         _root.getArenaEnhancer("Accessory Unique Enhancer",411,1,0,100,"","","",10,106,50000,604800000,"Accessory Unique Enhancer Lv. 1","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.\n\nSupply Crate Reward");
         itemName = "Accessory Unique Enhancer Lv. 1";
      }
      else if(possibility == 4)
      {
         _root.save.gardenMegaFertilizer += 1;
         itemName = "Mega Fertilizer";
      }
      else if(possibility == 5)
      {
         _root.save.megaCareerPotion += 1;
         itemName = "Mega Career Potion";
      }
      else if(possibility == 6)
      {
         _root.save.mysteryBox[4] += 1;
         itemName = "Legendary Box";
      }
      _root.dispNews(166,"Gained additional reward: " + itemName + "!");
      _root.dispNews(166,"Supply Crate opened! Please check the results.");
      if(isNaN(_root.save["mysteryBoxCollect" + boxID][possibility]))
      {
         _root.save["mysteryBoxCollect" + boxID][possibility] = 0;
      }
      _root.save["mysteryBoxCollect" + boxID][possibility] += 1;
   }
   boxID = 10;
   doFr = 0;
   levelMult = Math.ceil(_root.save.bestLevel / 100);
   if(_root.save.bestLevel >= 9001 || isNaN(levelMult))
   {
      levelMult = 100;
   }
}
