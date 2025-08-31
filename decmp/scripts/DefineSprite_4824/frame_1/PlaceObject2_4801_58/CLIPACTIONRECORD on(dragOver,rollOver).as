on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 70 && skillName != "")
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>" + skillName + "</font></b> [Lv. " + skillLevel + "]\nMP Cost: <font color=\'#FFFF00\'>" + _root.withComma(mpCost) + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font>\nCooldown: <font color=\'#FFFF00\'>" + coolDownMax + " seconds</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\n" + skillDesc;
      if(_root.save.arenaAuto == 4)
      {
         _root.actiondescription += "\n\nShift + Click to cancel automatic skill usage";
      }
      else
      {
         _root.actiondescription += "\n\nCtrl + Click to automatically use this skill for 30 minutes";
      }
   }
}
