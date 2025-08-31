on(dragOver,rollOver){
   if(_root.save.dailyPending == true)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Daily Bonus</b></font>\nYou have unclaimed Daily Bonus.\nPlease click here to claim it before the day ends.";
   }
   else if(_root.save.curDateID != _root.clock_date)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Attendance Check!</b></font>\nYou have unclaimed Attendance Check bonus.\nClose and reopen the game to claim it before the day ends.";
   }
}
