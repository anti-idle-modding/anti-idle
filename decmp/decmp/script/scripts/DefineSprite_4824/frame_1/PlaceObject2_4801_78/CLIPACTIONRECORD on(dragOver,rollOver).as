on(dragOver,rollOver){
   if(skillLevel > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Roundhouse Kick</font></b> [Lv. " + skillLevel + "]\nCooldown: <font color=\'#FFFF00\'>" + (150 - skillLevel * 2) + " seconds</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nDeal massive damage to the monster, ignoring its defense. Ranged attack. Gives a buff when used.";
   }
}
