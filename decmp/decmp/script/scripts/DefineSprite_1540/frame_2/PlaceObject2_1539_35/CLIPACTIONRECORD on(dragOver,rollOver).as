on(dragOver,rollOver){
   checkFrame();
   if(unlocked == true)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>EXP Boost</font></b>\n\nYou gain 2x A: TG EXP if you win.\n\nCost per match:\n<b>" + _root.withComma(cost) + "</b> FCG Cash";
   }
   else
   {
      _root.actiondescription = "<font color=\'#999999\'>Reach FCG Level 1 to unlock!</font>";
   }
}
