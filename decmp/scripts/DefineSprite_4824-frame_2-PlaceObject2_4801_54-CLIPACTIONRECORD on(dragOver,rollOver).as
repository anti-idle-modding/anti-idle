on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 30)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Critical Strike</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font> + <font color=\'#0099FF\'>" + Math.floor(_root.save.arenaSpirit * spiritMult) + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nDeals massive Critical damage. For " + skillDuration + " seconds, always critical for 2.5x of your Critical Damage.";
   }
}
