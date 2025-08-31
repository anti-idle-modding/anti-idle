onClipEvent(enterFrame){
   if(_root.arcadeLife > 0 && _root.arcadeMultiplier < 20)
   {
      count += 1 / _root.fps;
      if(_root.save.arcadeDifficulty[2] == 1)
      {
         count -= 0.6 / _root.fps;
      }
      if(_root.save.arcadeDifficulty[2] == 3)
      {
         count += 0.5 / _root.fps;
      }
      if(_root.save.arcadeDifficulty[2] == 4)
      {
         count += 0.7 / _root.fps;
      }
   }
   if(_alpha > 0)
   {
      dispText.text = _root.arcadeMultiplier + 1 + "x";
      if(_root.save.arcadeDifficulty[2] == 1)
      {
         _alpha = _alpha - 25 / _root.fps;
      }
      else if(_root.save.arcadeDifficulty[2] == 2)
      {
         _alpha = _alpha - 37.5 / _root.fps;
      }
      else if(_root.save.arcadeDifficulty[2] == 3)
      {
         _alpha = _alpha - 50 / _root.fps;
      }
      else
      {
         _alpha = _alpha - 25 / _root.fps;
      }
      if(this.hitTest(_parent._parent.radar._x + 10,_parent._parent.radar._y + 80,true))
      {
         _root.arcadeMultiplier += 1;
         _alpha = 0;
      }
   }
   if(_root.save.rankedMode != true)
   {
      if(count > 10 + _root.arcadeMultiplier - _root.save.unrankedPower[6] * 0.5)
      {
         reset();
      }
   }
   else if(count > 10 + _root.arcadeMultiplier)
   {
      reset();
   }
}
