onClipEvent(load){
   function reset()
   {
      count = 0;
      _alpha = 100;
      if(_root.save.rankedMode != true)
      {
         _alpha = 100 + _root.save.unrankedPower[6] * 25;
      }
      _X = 0 + Math.random() * 150 - Math.random() * 150;
      _Y = 0 + Math.random() * 150 - Math.random() * 150;
      if(_X > -60 && _X <= 0)
      {
         _X = -60;
      }
      else if(_X > 0 && _X < 60)
      {
         _X = 60;
      }
      if(_Y > -60 && _Y <= 0)
      {
         _Y = -60;
      }
      else if(_Y > 0 && _Y < 60)
      {
         _Y = 60;
      }
   }
   _alpha = 0;
   count = 0;
}
