on(release){
   _root.save.breakNewsMode += 1;
   if(_root.save.breakNewsMode > 3)
   {
      _root.save.breakNewsMode = 1;
   }
   getDisp();
   gotoAndStop(_root.save.breakNewsMode);
}
