on(release){
   if(_root.save.whiteCoin >= 200)
   {
      _root.save.whiteCoin -= 200;
      _root.gainCyborgPoint(1000);
      _root.actiondescription = "Click here to buy 1,000 Cyborg Points using 200 White Coins.\n\nYour White Coins: <b>" + _root.withComma(_root.save.whiteCoin) + "</b>\n\n-----\n\nCyborg Points are required to make Simulation Cyborg perform tasks. Get more Cyborg Points by using Arcade, Stadium, TukkunFCG and Fishing.";
   }
}
