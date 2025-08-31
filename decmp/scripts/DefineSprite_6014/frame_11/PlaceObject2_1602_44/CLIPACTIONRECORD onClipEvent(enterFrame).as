onClipEvent(enterFrame){
   if(_root.save.arenaProofTraining >= _parent.cost4 && _root.save.arenaRevengeEntry < 999)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
