onClipEvent(enterFrame){
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true) && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1)
   {
      doFr += 1;
      if(Key.isDown(17))
      {
         doFr = 1;
      }
      itr = 1;
      if(doFr >= 101)
      {
         itr = 5;
      }
      if(doFr >= 301)
      {
         itr = 25;
         if(doFr == 301)
         {
            _root.dispNews(1,"Rewards are not displayed to reduce lag.");
            _root.dispNews(1,"Opening boxes at high speed.");
         }
      }
      if(itr > _root.save.mysteryBox[boxID])
      {
         itr = _root.save.mysteryBox[boxID];
      }
      if(isNaN(_root.save.mysteryBox[boxID]))
      {
         itr = 0;
      }
      while(itr > 0)
      {
         itr -= 1;
         if(_root.save.mysteryBox[boxID] > 0 && !isNaN(_root.save.mysteryBox[boxID]) && _root.save.progBoxNext <= 600 && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1 && _root.save.progBoxToday < progBoxLimit)
         {
            _root.save.mysteryBox[boxID] -= 1;
            openBox();
            _root.save.progBoxToday += 1;
            if(_root.save.gDifficulty == 3 && _root.save.level < 8999)
            {
               _root.save.progBoxAsc += 1;
               if(_root.save.progBoxAsc >= 500)
               {
                  _root.save.progBoxNext += 2;
               }
               if(_root.save.progBoxAsc >= 2500)
               {
                  _root.save.progBoxNext += 10;
               }
               if(_root.save.progBoxAsc >= 10000)
               {
                  _root.save.progBoxNext += 60;
               }
            }
         }
         if(_root.save.progBoxToday >= progBoxLimit)
         {
            _root.showPopup("Daily Limit Reached","You can only open 1,000,000 Progress Boxes per day. This limit cannot be bypassed with Day Skip.");
         }
      }
   }
   else
   {
      doFr = 0;
   }
}
