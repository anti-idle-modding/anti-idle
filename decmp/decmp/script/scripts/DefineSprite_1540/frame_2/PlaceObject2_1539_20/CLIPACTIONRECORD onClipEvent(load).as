onClipEvent(load){
   function checkFrame()
   {
      cost = 1500;
      if(_root.save.careerLevel[8] >= 200)
      {
         cost = 1050;
      }
      if(_root.save.fcgLevel >= 20)
      {
         unlocked = true;
         if(_root.save.fcgPower[2] == true)
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
