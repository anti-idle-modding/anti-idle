onClipEvent(load){
   travelPrice = 400000000;
   destination = 58;
   if(_root.save.featureTravelingTicket == true)
   {
      travelPrice = Math.floor(travelPrice * 0.05);
   }
}
