on(dragOver,rollOver){
   if(skillLevel > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Limit Break</font></b> [Lv. " + skillLevel + "]\nCooldown: <font color=\'#FFFF00\'>15 seconds</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nFor " + skillDuration + " sec, increases the limit of Damage Resist, Hit Chance and Dodge Chance from 90% to 94%, the limit of Mastery, Ignore Defense, Double Hit Chance and Critical Chance from 95% to 97%, the limit of Magic Resist and Negate Effect from 80% to 88%. In addition, if you are using a melee weapon, you will be able to hit monsters that are not within the weapon\'s attack range for " + skillDuration + " sec.";
   }
}
