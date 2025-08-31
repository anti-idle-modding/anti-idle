on(release){
   if(_root.save.arenaTurnBased != true)
   {
      _root.save.arenaTurnBased = true;
      gotoAndStop(2);
   }
   else
   {
      _root.save.arenaTurnBased = false;
      gotoAndStop(1);
   }
}
