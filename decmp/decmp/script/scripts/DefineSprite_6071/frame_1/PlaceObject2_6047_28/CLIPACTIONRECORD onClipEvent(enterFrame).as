onClipEvent(enterFrame){
   if(Math.abs(targetRot - _rotation) > 0.05)
   {
      _rotation = _rotation + (targetRot - _rotation) / 10;
   }
}
