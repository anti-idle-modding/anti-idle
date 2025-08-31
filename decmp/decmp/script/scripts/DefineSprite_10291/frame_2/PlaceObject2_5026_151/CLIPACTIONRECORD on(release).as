on(release){
   if(_root.save.offlineProgress != true && _root.save.bestLevel >= 12)
   {
      _root.save.offlineProgress = true;
   }
   else
   {
      _root.save.offlineProgress = false;
   }
}
