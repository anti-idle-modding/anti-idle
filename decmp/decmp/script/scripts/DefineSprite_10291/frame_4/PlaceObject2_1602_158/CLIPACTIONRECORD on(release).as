on(release){
   if(_root.save.boost < targetBoost - 1 && _root.save.megaBoostPotion >= 1)
   {
      _root.save.megaBoostPotion -= 1;
      _root.gainBoost(9999,4);
      if(_root.save.boostFreeze < 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250))
      {
         _root.save.boostFreeze = 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250);
      }
   }
}
