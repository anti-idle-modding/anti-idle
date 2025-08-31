onClipEvent(load){
   function checkFrame()
   {
      cost = 8000;
      if(_root.save.careerLevel[8] >= 200)
      {
         cost = 5600;
      }
      if(_root.save.fcgLevel >= 50)
      {
         unlocked = true;
         if(_root.save.fcgPower[5] == true)
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
