onClipEvent(enterFrame){
   skillLevel = _root.save.epicSkill[ID];
   calcSkillCost();
   disp.text = skillLevel;
}
