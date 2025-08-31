onClipEvent(load){
   function reset()
   {
      curType = 1;
      if(Math.random() < 0.5)
      {
         curType = 2;
         if(Math.random() < 0.5)
         {
            curType = 3;
         }
      }
      gotoAndStop(curType);
      count -= 1;
      if(count < 25 && count < _root.arcadeBlock / 10)
      {
         gotoAndStop(4);
         count = 40;
      }
   }
   count = 40;
   reset();
   holdingLeft = false;
   holdingDown = false;
   holdingRight = false;
}
