on(dragOver,rollOver){
   if(areaName != "")
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>" + areaName + "</b></font>";
      if(_root.save.arenaLevel >= reqRank)
      {
         _root.actiondescription += "\n\n<font color=\'#00FF00\'>Required Rank: <b>" + reqRank + "</b></font>\nClick here to travel!";
      }
      else
      {
         _root.actiondescription += "\n\n<font color=\'#FF0000\'>Required Rank: <b>" + reqRank + "</b></font>\nYour Arena Rank is not high enough.";
      }
   }
   _root.actiondescription += "\n\nNOTE: The \'Required Rank\' is the minimum Rank needed to enter the area, not the recommended Rank. It is advised that you do not proceed to Mystic Forest until at least Rank 15.";
}
