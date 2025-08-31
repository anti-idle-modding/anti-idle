on(release){
   if(Key.isDown(17) && Key.isDown(68) && _root.saveid <= 3 && _root.save.cheatEnabled == false)
   {
      _root.save.cheatEnabled = true;
      _root.gotoAndStop(11);
   }
}
