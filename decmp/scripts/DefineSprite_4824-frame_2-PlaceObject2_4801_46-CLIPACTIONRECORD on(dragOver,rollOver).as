on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 10)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Heal</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nHP Recovery: <font color=\'#FFFF00\'>" + healPower + "%</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "% (vs. Undead)</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\nReduces the duration of Poison, Weaken, Blind and Slow by " + effectReduce + " sec\nFor " + skillDuration + " sec, Defense +" + defenseIncrease + "%, HP Regen is tripled";
   }
}
