onClipEvent(enterFrame){
   if(_root.fishArray[_parent.ID].coin > 0 && _root.save.fishLeft[_parent.ID] > 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
   if(Key.isDown(16) && focus == true)
   {
      doFr += 1;
      if(Key.isDown(17))
      {
         doFr = 1;
      }
      if(doFr <= 10)
      {
         doThis();
      }
      else if(doFr <= 50)
      {
         i = 1;
         while(i <= 5)
         {
            doThis();
            i++;
         }
      }
      else
      {
         i = 1;
         while(i <= 25)
         {
            doThis();
            i++;
         }
      }
   }
   else
   {
      doFr = 0;
   }
}
