function checkExam()
{
   streakArr = [20,25,30,40,50,60,80,100,120,150,99999];
   perfectArr = [100,125,150,200,250,300,400,500,600,750,999999];
   if(_root.save.fishLevel >= 60 || _root.save.fishLevel < 50)
   {
      streakReq = 99999;
      perfectReq = 999999;
   }
   else
   {
      streakReq = streakArr[_root.save.fishLevel - 50];
      perfectReq = perfectArr[_root.save.fishLevel - 50];
      i = 1;
      while(i <= _root.save.fishExamReduce && i <= 1000)
      {
         if(i <= 5)
         {
            mul = 0.95;
         }
         else if(i <= 10)
         {
            mul = 0.96;
         }
         else if(i <= 25)
         {
            mul = 0.97;
         }
         else if(i <= 50)
         {
            mul = 0.98;
         }
         else
         {
            mul = 0.99;
         }
         if(i % 2 == 0 || i < 10)
         {
            streakReq = Math.floor(streakReq * mul);
         }
         else
         {
            streakReq = Math.ceil(streakReq * mul);
         }
         if(streakReq < 2)
         {
            streakReq = 2;
         }
         perfectReq = Math.floor(perfectReq * mul);
         if(perfectReq < 10)
         {
            perfectReq = 10;
         }
         if(streakReq < Math.ceil(perfectReq / 8))
         {
            streakReq = Math.ceil(perfectReq / 8);
         }
         i++;
      }
   }
   skillText.text = "Skill " + _root.save.fishLevel + " -> " + Math.round(_root.save.fishLevel + 1);
   if(_root.save.fishLevel >= 60)
   {
      skillText.text = "Survival";
   }
   if(_root.save.fishLevel == 50)
   {
      skillText.text = "Become an ETERNAL LEGEND!";
   }
   _root.save.fishExamStreakReq = streakReq;
   _root.save.fishExamPerfectReq = perfectReq;
   streakText.text = _root.withComma(_root.save.fishExamStreakReq) + "x";
   perfectText.text = _root.withComma(_root.save.fishExamPerfectReq);
   reduceText.text = "Difficulty reductions applied: " + _root.save.fishExamReduce;
}
checkExam();
onEnterFrame = function()
{
   checkExam();
};
