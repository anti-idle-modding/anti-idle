onClipEvent(enterFrame){
   _rotation = _rotation + dir;
   if(_rotation >= 5 || _rotation <= 0)
   {
      dir = - dir;
   }
}
