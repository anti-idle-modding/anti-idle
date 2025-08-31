on(dragOver,rollOver){
   if(_root.save.featureManualSprayer == true)
   {
      if(_root.sprayCooldown1 <= 0)
      {
         _root.actiondescription = "<b><font color=\'#FFFF00\'>Manual Ant Sprayer</font></b>\nClick here to spray those annoying ants! Manual Ant Sprayer sprays 90% of the ants, and stops them from coming back for 15 seconds!\n\nCooldown: 180 seconds";
      }
      else
      {
         _root.actiondescription = "<b><font color=\'#FFFF00\'>Manual Ant Sprayer</font></b>\nManual Ant Sprayer sprays 90% of the ants, and stops them from coming back for 15 seconds!\n\nCooldown: 180 seconds\n\nYou can use Manual Ant Sprayer again in " + _root.sprayCooldown1 + " sec.";
      }
   }
   else
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Manual Ant Sprayer</font></b>\nYou need to purchase Manual Ant Sprayer in the Feature Shop to spray ants.";
   }
}
