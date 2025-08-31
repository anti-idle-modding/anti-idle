on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 10)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Quick Attack</font></b> [Lv. " + skillLevel + "]\nMP Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "% x " + hitCount + "</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>";
      if(_root.save.arenaAuto == 2)
      {
         _root.actiondescription += "\n\nShift + Click to cancel automatic skill usage";
      }
      else
      {
         _root.actiondescription += "\n\nCtrl + Click to automatically use this skill for 30 minutes";
      }
   }
}
