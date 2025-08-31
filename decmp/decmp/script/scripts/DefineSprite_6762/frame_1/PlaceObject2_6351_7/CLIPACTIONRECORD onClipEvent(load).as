onClipEvent(load){
   function reset()
   {
      count = 0;
      _X = 240;
      _Y = 125;
      xspeed = 5;
      yspeed = 1.2 + Math.random() - Math.random();
      if(Math.random() < 0.5)
      {
         yspeed *= -1;
      }
   }
   reset();
}
