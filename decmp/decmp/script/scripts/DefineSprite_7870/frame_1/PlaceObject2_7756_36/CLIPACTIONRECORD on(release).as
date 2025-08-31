on(release){
   if(_root.save.fishLevel >= 50 && _root.save.fishExamLeft < 0)
   {
      if(_root.fishStatus != 2)
      {
         _parent.fishPop.gotoAndStop(4);
      }
   }
   else if(_root.save.fishLevel < 30 && _parent.ready == true && _root.save.coin >= coinCost)
   {
      _root.save.coin -= coinCost;
      _root.save.fishExp = 0;
      _root.save.fishTotalExp += _parent.reqExp;
      _root.save.fishLevel += 1;
      _root.save.fishBestLevel = _root.save.fishLevel;
      _root.dispNews(120,"Your Fishing Skill is now " + _root.save.fishLevel + "!");
      coinCost = Infinity;
      _parent.ready = false;
   }
}
