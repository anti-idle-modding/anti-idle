on(release){
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
