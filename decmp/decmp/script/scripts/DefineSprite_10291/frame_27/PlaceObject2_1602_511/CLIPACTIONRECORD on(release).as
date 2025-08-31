on(release){
   if(_root.save.restTime >= 10800)
   {
      _root.save.restTime -= 10800;
      _root.save.botEnergy += 1800;
      if(_root.save.botEnergy > 359999)
      {
         _root.save.botEnergy = 359999;
      }
      _root.actiondescription = "Click here to convert 3 hours of REST time to 30 minutes of Cyborg Energy.\n\nYour REST time: <b>" + _root.convertSecFull(_root.save.restTime) + "</b>\n\n-----\n\nCyborg Energy is required for Simulation Cyborg to operate. Get more Cyborg Energy by recharging.";
   }
}
