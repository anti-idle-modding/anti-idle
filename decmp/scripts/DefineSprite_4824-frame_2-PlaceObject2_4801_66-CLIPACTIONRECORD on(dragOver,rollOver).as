on(dragOver,rollOver){
   if(skillLevel > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Enrage</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nCooldown: <font color=\'#FFFF00\'>" + (90 - skillLevel) + " seconds</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nGrants the Enrage buff for 30 seconds if you don\'t currently have a buff. Also grants the Enrage aura for 6 seconds, which has the same effects as Enrage buff and stacks with all other buffs (except Enrage) and auras.\n\n<font color=\'#FFCC33\'>Rage Depletion: <b>-" + Math.floor(30 * _root.buffMultiplier) + "%</b></font>\n<font color=\'#FFCC33\'>Rage Attack: <b>+" + Math.floor(60 * _root.buffMultiplier) + "%</b></font>\n<font color=\'#FFCC33\'>Rage Speed: <b>+" + Math.floor(90 * _root.buffMultiplier) + "%</b></font>\n<font color=\'#FFCC33\'>Damage vs. Non-Bosses: <b>+" + Math.floor(60 * _root.buffMultiplier) + "%</b></font>\n<font color=\'#FFCC33\'>Damage vs. Bosses: <b>+" + Math
      .floor(60 * _root.buffMultiplier) + "%</b></font>";
   }
}
