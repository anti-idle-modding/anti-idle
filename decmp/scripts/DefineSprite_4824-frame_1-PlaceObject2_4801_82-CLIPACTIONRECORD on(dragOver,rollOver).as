on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Mana Potion</font></b>\nPixel Cost: <font color=\'#FFFF00\'>" + _root.withComma(pixelCost) + "</font>\nMP: <b>+" + _root.withComma(maxRefill) + "</b>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>";
}
