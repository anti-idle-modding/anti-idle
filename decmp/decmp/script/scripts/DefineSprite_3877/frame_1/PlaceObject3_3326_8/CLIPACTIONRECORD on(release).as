on(release){
   if(_root.save.arenaLevel >= reqRank && _root.saveid < 10)
   {
      _parent._parent.kommanderDialog.gotoAndStop(12);
   }
   else
   {
      _root.showPopup("Too dangerous!","This area is too dangerous for you. Better avoid it for now.");
   }
}
