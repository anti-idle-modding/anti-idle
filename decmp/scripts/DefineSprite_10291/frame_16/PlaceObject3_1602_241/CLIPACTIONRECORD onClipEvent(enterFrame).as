onClipEvent(enterFrame){
   if(_parent.questCount >= _parent.questNeed && (_root.save.mainQuestRank[_parent.ID] < 4 || isNaN(_root.save.mainQuestRank[_parent.ID])))
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
