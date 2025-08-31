on(release){
   if(_root.save.fishExamPerfect >= _root.save.fishExamPerfectReq && _root.save.fishExamStreak >= _root.save.fishExamStreakReq || Key.isDown(16))
   {
      _root.actiondescription = "";
      _root.save.fishExamLeft = 0;
   }
}
