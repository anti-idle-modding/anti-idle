onClipEvent(load){
   travelPrice = 0;
   destination = 20;
   if(_root.save.featureTravelingTicket == true)
   {
      travelPrice = Math.floor(travelPrice * 0.05);
   }
}
