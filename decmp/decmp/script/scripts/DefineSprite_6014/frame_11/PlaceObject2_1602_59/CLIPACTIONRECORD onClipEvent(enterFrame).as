onClipEvent(enterFrame){
   if(_root.save.arenaProofMission >= _parent.cost5 && _root.save.arenaEndlessEntry < 999)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
