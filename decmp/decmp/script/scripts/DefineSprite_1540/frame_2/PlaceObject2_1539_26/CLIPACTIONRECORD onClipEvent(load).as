onClipEvent(load){
   function checkFrame()
   {
      cost = 5000;
      if(_root.save.careerLevel[8] >= 200)
      {
         cost = 3500;
      }
      if(_root.save.fcgLevel >= 40)
      {
         unlocked = true;
         if(_root.save.fcgPower[4] == true)
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
