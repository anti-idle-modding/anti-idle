on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 70)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Chaos</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font> + <font color=\'#0099FF\'>" + Math.floor(_root.save.arenaSpirit * spiritMult) + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nPermanently reduces monster\'s Attack and Accuracy by " + effectDisp + "%. Stat reduction effect is reduced to one-fourth of original effect if used more than once on the same monster. Stacks up to 25 times on each monster. Also inflicts poison, weaken and blind for 1 second.";
   }
}
