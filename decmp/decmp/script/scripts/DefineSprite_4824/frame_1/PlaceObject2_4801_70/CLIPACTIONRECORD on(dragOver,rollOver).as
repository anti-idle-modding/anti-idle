on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Basic Attack</font></b> [Lv. " + skillLevel + "]\nMP Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>";
   if(_root.save.arenaAuto == 1)
   {
      _root.actiondescription += "\n\nShift + Click to cancel automatic skill usage";
   }
   else
   {
      _root.actiondescription += "\n\nCtrl + Click to automatically use this skill for 30 minutes";
   }
}
