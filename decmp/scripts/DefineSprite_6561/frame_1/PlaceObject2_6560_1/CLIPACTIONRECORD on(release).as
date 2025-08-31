on(release){
   if(_parent._parent.mindMonster != true)
   {
      if(Key.isDown(70))
      {
         if(_currentframe == 1)
         {
            gotoAndStop(8);
         }
         else if(_currentframe == 8)
         {
            gotoAndStop(1);
         }
      }
      else if(_currentframe == 2)
      {
         _parent._parent.nextFrame();
      }
      else if(_currentframe == 1)
      {
         revealTile();
         _root.arcadeTurns -= 1;
      }
      if(_currentframe != 1 && _currentframe != 8)
      {
         _root.focusx = tilex;
         _root.focusy = tiley;
         _root.focusTiletype = tiletype;
         if(tiletype == 5)
         {
            _root.focusDist = distance;
         }
         if(tiletype == 3)
         {
            _root.focusNearby = nearby;
         }
      }
   }
}
