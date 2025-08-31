on(release){
   if(_root.save.boost < targetBoost - 1 && _root.save.boostPotion >= 1)
   {
      _root.save.boostPotion -= 1;
      _root.gainBoost(9999,3);
      if(_root.save.boostFreeze < 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250))
      {
         _root.save.boostFreeze = 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250);
      }
   }
}
