onClipEvent(load){
   function checkFrame()
   {
      cost = 500;
      if(_root.save.careerLevel[8] >= 200)
      {
         cost = 350;
      }
      if(_root.save.fcgLevel >= 10)
      {
         unlocked = true;
         if(_root.save.fcgPower[1] == true)
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
