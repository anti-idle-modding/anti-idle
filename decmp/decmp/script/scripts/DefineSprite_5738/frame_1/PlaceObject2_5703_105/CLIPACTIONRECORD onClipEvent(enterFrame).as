onClipEvent(enterFrame){
   gotoAndStop(_parent.specType);
   if(_parent.specType == 9)
   {
      _parent.specText2.text = _root.withComma(_root.save.arenaTukkonium);
   }
   else if(_parent.specType == 8)
   {
      _parent.specText2.text = _root.withComma(_root.save.arenaSampleCraft);
      if(_root.save.arenaSampleCraft > 3)
      {
         _parent.specText2.text = "Unlimited";
      }
   }
   else if(_parent.specType == 7)
   {
      _parent.specText2.text = _root.withComma(_root.save.arenaBacon);
   }
   else if(_parent.specType == 6)
   {
      _parent.specText2.text = _root.withComma(_root.save.arenaEnhancerFragment);
   }
   else if(_parent.specType == 5)
   {
      _parent.specText2.text = _root.withComma(_root.save.arenaUnobtainium);
   }
   else if(_parent.specType == 4)
   {
      _parent.specText2.text = _root.withComma(_root.save.arenaChaoticFragment);
   }
   else if(_parent.specType == 3)
   {
      _parent.specText2.text = _root.withComma(_root.save.arenaProofMission);
   }
   else if(_parent.specType == 2)
   {
      _parent.specText2.text = _root.withComma(_root.save.arenaProofTraining);
   }
   else if(_parent.specType == 1)
   {
      _parent.specText2.text = _root.withComma(_root.save.arenaSuperiorCraft);
   }
}
