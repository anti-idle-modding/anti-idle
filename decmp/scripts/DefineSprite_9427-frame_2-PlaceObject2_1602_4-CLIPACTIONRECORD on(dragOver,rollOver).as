on(dragOver,rollOver){
   if(_root.save.hyperDayRem != 1)
   {
      _root.actiondescription = "Shift + Click this button to schedule a Hyper Day tomorrow using 1 EXPILL.\n\nYour EXPILLs: <b>" + _root.withComma(_root.save.botPill) + "</b>\nCraft EXPILLs in the Simulation Cyborg screen.\n\nYou can schedule <b>" + _root.save.hyperDayRem + "</b> more Hyper Days this month.\n\n* Note: You cannot schedule 2 Hyper Days in a row.";
   }
   else
   {
      _root.actiondescription = "Shift + Click this button to schedule a Hyper Day tomorrow using 1 EXPILL.\n\nYour EXPILLs: <b>" + _root.withComma(_root.save.botPill) + "</b>\nCraft EXPILLs in the Simulation Cyborg screen.\n\nYou can schedule <b>1</b> more Hyper Day this month.\n\n* Note: You cannot schedule 2 Hyper Days in a row.";
   }
}
