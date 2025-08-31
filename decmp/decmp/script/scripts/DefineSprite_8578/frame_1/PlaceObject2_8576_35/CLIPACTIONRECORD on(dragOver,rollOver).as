on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Today</b></font>\n\nEXP without multiplier:\n<b>" + _root.withCommaB(_root.save.expGraph[7]) + "</b>\n\nExtra EXP from multiplier:\n<b>" + _root.withCommaB(_root.save.expGraph2[7] - _root.save.expGraph[7]) + "</b>";
}
