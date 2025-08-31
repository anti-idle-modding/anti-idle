on(dragOver,rollOver){
   if(_root.saveid == 21)
   {
      _root.actiondescription = "<b>The Special Arena</b>\nBeat The Special Arena to finish the Challenge! Are you ready?";
   }
   else
   {
      _root.actiondescription = "<b>The Special Arena</b>\nTHE MEGABOSS is looking for a challenger! Prove that he isn\'t powerful at all!\n\nYou cannot use recovery potions in this raid.\n\nEntries left: <b>" + _root.save.arenaMegabossEntry + "</b>";
   }
   roll = 1;
}
