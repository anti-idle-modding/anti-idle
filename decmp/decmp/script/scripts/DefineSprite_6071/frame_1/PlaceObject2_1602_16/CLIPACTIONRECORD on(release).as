on(release){
   if(_root.save.coin >= repairCost)
   {
      _root.save.coin -= repairCost;
      if(_root.save.buttonBroken == true)
      {
         _root.save.buttonBroken = false;
         _root.dispNews(73,"Button repaired! (-" + _root.withComma(repairCost) + " Coins)");
         buttonFull._rotation = Math.random() * 10 - Math.random() * 10;
      }
      else
      {
         _root.save.immortality += 1;
         _root.buttonLife = 5000;
         _root.dispNews(73,"Button repaired! (-" + _root.withComma(repairCost) + " Coins)");
      }
   }
   _parent.buttonFull.resetRot();
   _root.buttonScore = 0;
}
