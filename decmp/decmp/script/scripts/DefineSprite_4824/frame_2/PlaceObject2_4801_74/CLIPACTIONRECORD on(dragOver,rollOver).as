on(dragOver,rollOver){
   if(skillLevel > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Elemental Boost</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nCooldown: <font color=\'#FFFF00\'>" + (90 - skillLevel) + " seconds</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nGrants the Elemental Boost buff for 30 seconds if you don\'t currently have a buff. Also grants the Elemental Boost aura for 6 seconds, which has the same effects as Elemental Boost buff and stacks with all other buffs (except Elemental Boost) and auras.\n\n<font color=\'#99FF33\'>EXP: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>\n<font color=\'#FFCC33\'>All Elements: <b>+" + Math.floor(150 * _root.buffMultiplier) + "%</b></font>";
   }
}
