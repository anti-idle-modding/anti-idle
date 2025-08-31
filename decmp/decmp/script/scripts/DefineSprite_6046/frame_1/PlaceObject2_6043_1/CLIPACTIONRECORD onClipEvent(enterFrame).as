onClipEvent(enterFrame){
   if(_root.save.buttonBless > 0)
   {
      gotoAndStop(2);
   }
   else if(_root.save.buttonBless <= 0)
   {
      gotoAndStop(1);
   }
   clickDelay -= 40 / _root.fps;
   xloc += xspd * dir;
   xspd *= 0.7;
   if(Math.abs(xspd) < 0.5)
   {
      xspd = 0;
   }
   if(xloc > 190)
   {
      xloc = 190;
      dir = -1;
   }
   if(xloc < -190)
   {
      xloc = -190;
      dir = 1;
   }
   _X = xloc;
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true))
   {
      clickButton();
   }
}
