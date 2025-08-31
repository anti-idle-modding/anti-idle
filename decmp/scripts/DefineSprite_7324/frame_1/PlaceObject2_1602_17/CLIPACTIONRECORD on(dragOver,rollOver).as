on(dragOver,rollOver){
   _root.actiondescription = "Use an Energy Refill to refill 20% of your Adventure Energy. You can also press 9 on your keyboard.";
   if(_root.save.gDifficulty == 3 && _root.save.level < 8999)
   {
      _root.actiondescription += "\n\nDuring an Impossible Ascension, there is a cooldown for using Energy Refills after 1,000 Energy Refills are used. You have used <b>" + _root.withComma(_root.save.refillAsc) + "</b> Energy Refills this Ascension.";
   }
}
