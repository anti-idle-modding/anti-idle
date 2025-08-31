onClipEvent(load){
   function checkFrame()
   {
      if(_root.save.autoAscendEnabled2 == true)
      {
         gotoAndStop(2);
      }
      else
      {
         gotoAndStop(1);
      }
   }
   checkFrame();
}
