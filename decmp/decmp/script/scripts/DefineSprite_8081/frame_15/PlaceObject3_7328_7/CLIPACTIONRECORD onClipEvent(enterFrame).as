onClipEvent(enterFrame){
   skillLevel = _root.save.epicSkill[ID];
   skillCost = Math.floor((100 + _root.save.epicSkill[ID] * _root.save.epicSkill[ID]) * 1000000);
   disp.text = skillLevel;
}
