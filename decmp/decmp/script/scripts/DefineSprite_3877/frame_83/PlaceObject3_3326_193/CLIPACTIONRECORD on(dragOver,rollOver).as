on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Ye Olde Pub</b></font>";
   if(reqRank > 1 && _root.save.arenaLevel >= reqRank)
   {
      _root.actiondescription += "\n\n<font color=\'#00FF00\'>Required Rank: <b>" + reqRank + "</b></font>\nClick here to travel!";
   }
   else if(reqRank > 1)
   {
      _root.actiondescription += "\n\n<font color=\'#FF0000\'>Required Rank: <b>" + reqRank + "</b></font>\nYour Arena Rank is not high enough.";
   }
}
