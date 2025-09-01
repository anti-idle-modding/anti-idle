on(dragOver,rollOver){
   if(_root.save.bestLevel >= 50)
   {
      _root.actiondescription = "Cost to feed: <b>" + _root.withComma(feedCost) + "</b> Coins\n\nIt\'s worth it, really!";
   }
   else
   {
      _root.actiondescription = "You have to be at least level 50 to feed the Dragon of Wisdom.";
   }
}
