on(keyPress "<Up>"){
   allyOffset -= 1;
   if(allyOffset < 0)
   {
      allyOffset = 0;
   }
   _root.actiondescription = "";
}
