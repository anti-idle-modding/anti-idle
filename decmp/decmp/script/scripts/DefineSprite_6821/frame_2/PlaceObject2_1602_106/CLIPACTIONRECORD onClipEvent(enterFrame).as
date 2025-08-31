onClipEvent(enterFrame){
   if(_root.save.arcadeToken < 4 && _root.save.rankedMode == true || _root.save.featureArcadePack != true)
   {
      _alpha = 30;
   }
   else
   {
      _alpha = 100;
   }
}
