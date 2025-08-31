onClipEvent(enterFrame){
   targetScale = _root.arcadeLife;
   insideBar._xscale += (targetScale - insideBar._xscale) / 5;
}
