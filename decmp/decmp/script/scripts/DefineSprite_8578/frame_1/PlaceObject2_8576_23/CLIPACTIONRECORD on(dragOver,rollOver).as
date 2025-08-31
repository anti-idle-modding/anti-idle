on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>6 days ago</b></font>\n\nEXP without multiplier:\n<b>" + _root.withCommaB(_root.save.expGraph[1]) + "</b>\n\nExtra EXP from multiplier:\n<b>" + _root.withCommaB(_root.save.expGraph2[1] - _root.save.expGraph[1]) + "</b>";
}
