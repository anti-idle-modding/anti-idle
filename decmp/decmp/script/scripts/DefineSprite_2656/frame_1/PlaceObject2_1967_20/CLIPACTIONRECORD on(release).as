on(release){
   _root.save.experienced += 1;
   if(_root.save.level < 9002)
   {
      _root.dispNews(167,_root.withComma(_root.requiredExp - _root.save.currentExp) + " more EXP required to level up.");
      _root.dispNews(167,"Current Level Progress: " + _root.withComma(_root.save.currentExp) + " / " + _root.withComma(_root.requiredExp) + " [" + Math.floor(_root.save.currentExp / _root.requiredExp * 10000) / 100 + "%]");
   }
   else
   {
      _root.dispNews(167,"You are at the level cap! Congratulations!");
   }
   _root.dispNews(167,"Level: " + _root.save.level + " | EXP: " + _root.withComma(_root.finalExp) + " / " + _root.withComma(_root.save.totalExp + _root.requiredExp));
}
