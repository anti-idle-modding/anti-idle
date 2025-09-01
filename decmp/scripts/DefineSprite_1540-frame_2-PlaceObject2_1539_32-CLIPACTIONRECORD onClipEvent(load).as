onClipEvent(load){
   function checkFrame()
   {
      cost = 12000;
      if(_root.save.careerLevel[8] >= 200)
      {
         cost = 8400;
      }
      if(_root.save.fcgLevel >= 60)
      {
         unlocked = true;
         if(_root.save.fcgPower[6] == true)
         {
            gotoAndStop(4);
         }
         else
         {
            gotoAndStop(3);
         }
      }
      else
      {
         unlocked = false;
         gotoAndStop(2);
      }
   }
   checkFrame();
}
