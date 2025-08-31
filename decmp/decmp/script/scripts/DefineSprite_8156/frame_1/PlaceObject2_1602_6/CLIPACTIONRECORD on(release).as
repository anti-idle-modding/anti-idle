on(release){
   if(_root.optionsScreen._currentframe != 16 && _root.optionsScreen._currentframe != 17)
   {
      _root.save.viewQuest += 1;
      if(_root.save.questCount >= _root.save.questNeed || _root.questScreenPage == 2)
      {
         _root.optionsScreen.gotoAndStop(17);
      }
      else
      {
         _root.optionsScreen.gotoAndStop(16);
      }
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}
