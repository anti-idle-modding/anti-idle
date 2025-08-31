on(dragOver,rollOver){
   if(skillLevel > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Auto Fight</font></b>\nMP Cost: <font color=\'#FFFF00\'>" + mpCost + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nAttack monsters automatically. Click here to turn Auto Fight on/off.";
   }
}
