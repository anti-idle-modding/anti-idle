on(release){
   if(_root.save.arenaZone != 80)
   {
      _parent.teleport.gotoAndStop(1);
      _parent.kommanderDialog.gotoAndStop(1);
      if(_root.save.featureTravelingTicket == false)
      {
         _root.showPopup("Access Denied","You don\'t have a map. Buy the VIP Traveling Ticket and get the map for FREE!");
      }
      else if(_parent.mapPopup._currentframe == 1)
      {
         _parent.mapPopup.gotoAndStop(2);
      }
      else
      {
         _parent.mapPopup.gotoAndStop(1);
      }
   }
}
