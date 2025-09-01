onClipEvent(enterFrame){
   targetScale = _root.arcadeMultiplierProgress;
   insideBar._xscale += (targetScale - insideBar._xscale) / 5;
   if(_root.arcadeMultiplierProgress >= 100 && _root.arcadeMultiplier < 15)
   {
      _root.arcadeMultiplierProgress -= 100;
      _root.arcadeMultiplier += 1;
   }
   else if(_root.arcadeMultiplier == 15)
   {
      _root.arcadeMultiplierProgress = 100;
   }
}
