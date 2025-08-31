on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Basic Attack</font></b>\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font> + <font color=\'#0099FF\'>" + Math.floor(_root.save.arenaSpirit * spiritMult) + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nBasic Attack. Deals extra damage based on Spirit charges.";
   if(_root.save.arenaAuto == 1)
   {
      _root.actiondescription += "\n\nShift + Click to cancel automatic skill usage";
   }
   else
   {
      _root.actiondescription += "\n\nCtrl + Click to automatically use this skill for 30 minutes";
   }
}
