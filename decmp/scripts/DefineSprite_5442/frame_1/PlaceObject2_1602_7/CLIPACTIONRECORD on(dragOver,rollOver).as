on(dragOver,rollOver){
   spCost = _root.save.arenaSkill[_parent.skillID] + 1;
   if(spCost > 10)
   {
      spCost = 10;
   }
   _root.actiondescription = "Click to raise this skill\'s level by 1.\nSP Cost: " + spCost + "\n\nYou can hold Space while clicking to raise skill level by 5 per click, or hold Ctrl + Space while clicking to raise skill level as much as possible.\n\nAlternatively, you can click the skill icon.";
}
