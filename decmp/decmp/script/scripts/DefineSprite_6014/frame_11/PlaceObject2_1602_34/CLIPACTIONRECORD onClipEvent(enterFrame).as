onClipEvent(enterFrame){
   if(_root.save.arenaProofTraining >= _parent.cost3 && _root.save.arenaCorruptionEntry < 999)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
