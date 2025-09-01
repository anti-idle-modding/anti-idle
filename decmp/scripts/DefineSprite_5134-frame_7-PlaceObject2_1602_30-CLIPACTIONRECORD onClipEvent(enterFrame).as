onClipEvent(enterFrame){
   if(_root.save.battlePoint >= _parent.nextReward)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}
