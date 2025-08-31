on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Yesterday</b></font>\n\nEXP without multiplier:\n<b>" + _root.withCommaB(_root.save.expGraph[6]) + "</b>\n\nExtra EXP from multiplier:\n<b>" + _root.withCommaB(_root.save.expGraph2[6] - _root.save.expGraph[6]) + "</b>";
}
