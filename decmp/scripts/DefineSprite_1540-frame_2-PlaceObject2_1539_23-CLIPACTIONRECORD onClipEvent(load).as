onClipEvent(load){
   function checkFrame()
   {
      cost = 3000;
      if(_root.save.careerLevel[8] >= 200)
      {
         cost = 2100;
      }
      if(_root.save.fcgLevel >= 30)
      {
         unlocked = true;
         if(_root.save.fcgPower[3] == true)
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
