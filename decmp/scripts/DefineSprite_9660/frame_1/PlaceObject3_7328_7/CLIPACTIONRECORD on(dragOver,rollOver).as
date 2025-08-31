on(dragOver,rollOver){
   _root.actiondescription = "<b>" + skillName + "</b>\nLevel: <b>" + skillLevel + "</b> / " + maxLevel + "\nWhen you claim a reward, <b><font color=\'#99FF00\'>" + skillLevel + "%</font></b> chance to " + skillDesc;
   if(skillLevel < maxLevel)
   {
      _root.actiondescription += "\n\nUpgrade Cost: <b>" + _root.withComma(skillCost) + "</b> Coins\n(+1% activation chance)";
   }
}
