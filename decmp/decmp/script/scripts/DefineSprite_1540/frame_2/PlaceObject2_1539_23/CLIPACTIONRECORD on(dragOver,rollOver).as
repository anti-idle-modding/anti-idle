on(dragOver,rollOver){
   checkFrame();
   if(unlocked == true)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>The Third Superpower</font></b>\n\nYou begin the match with 5 Attack.\n\nCost per match:\n<b>" + _root.withComma(cost) + "</b> FCG Cash";
   }
   else
   {
      _root.actiondescription = "<font color=\'#999999\'>Reach FCG Level 30 to unlock!</font>";
   }
}
