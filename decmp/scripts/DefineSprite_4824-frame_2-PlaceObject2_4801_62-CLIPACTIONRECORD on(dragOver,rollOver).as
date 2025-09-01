on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 120)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Overkill</font></b> [Lv. " + skillLevel + "]\nSpirit Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font> + <font color=\'#0099FF\'>" + Math.floor(_root.save.arenaSpirit * spiritMult) + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nInstantly kills a non-boss monster and deals massive damage to bosses. For " + skillDuration + " seconds, Spawn Rate +200% and always kill non-bosses instantly regardless of damage dealt. If the attack misses, the monster will not be killed instantly.";
   }
   if(_root.save.arenaZone == 82)
   {
      _root.actiondescription = "This skill is not allowed in Technical Battleground.";
   }
}
