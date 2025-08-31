on(release){
   if(_root.save.epicSkill[ID] < maxLevel && _root.save.coin >= skillCost)
   {
      _root.save.coin -= skillCost;
      _root.save.epicSkill[ID] += 1;
      _root.totalEpicSkill += 1;
      skillLevel = _root.save.epicSkill[ID];
      skillCost = Math.floor((100 + _root.save.epicSkill[ID] * _root.save.epicSkill[ID]) * 500000);
      disp.text = skillLevel;
      _root.actiondescription = "<b>" + skillName + "</b>\nLevel: <b>" + skillLevel + "</b> / " + maxLevel + "\nWhen you claim a reward, " + skillLevel + "% chance to " + skillDesc;
      if(skillLevel < maxLevel)
      {
         _root.actiondescription += "\n\nUpgrade Cost: <b>" + _root.withComma(skillCost) + "</b> Coins\n(+1% chance)";
      }
   }
}
