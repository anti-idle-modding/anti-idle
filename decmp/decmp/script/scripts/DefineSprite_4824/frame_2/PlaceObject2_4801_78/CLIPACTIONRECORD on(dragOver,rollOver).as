on(dragOver,rollOver){
   if(skillLevel > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Invincibility</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nCooldown: <font color=\'#FFFF00\'>" + (180 - skillLevel * 2) + " seconds</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nGrants the Invincibility buff for 30 seconds if you don\'t currently have a buff. Also grants the Invincibility aura for 6 seconds, which has the same effects as Invincibility buff and stacks with all other buffs and auras.";
   }
}
