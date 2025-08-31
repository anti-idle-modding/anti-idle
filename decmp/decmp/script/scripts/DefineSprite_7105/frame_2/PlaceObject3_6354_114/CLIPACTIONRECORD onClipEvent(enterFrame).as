onClipEvent(enterFrame){
   targetScale = _parent.field.stadiumHero.energy / _parent.field.stadiumHero.maxEnergy * 100;
   if(targetScale > 100)
   {
      targetScale = 100;
   }
   insideBar._xscale += (targetScale - insideBar._xscale) / 5;
}
