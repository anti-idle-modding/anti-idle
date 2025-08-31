on(release){
   if(_root.save.arenaLevel >= 50 || _root.save.bannedB >= 1)
   {
      _parent.gotoAndStop(8);
   }
   else
   {
      _root.showPopup("Access Denied","You have to reach Arena Rank 50 to access this feature.");
   }
}
