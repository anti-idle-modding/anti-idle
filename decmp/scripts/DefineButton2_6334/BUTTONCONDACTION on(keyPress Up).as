on(keyPress "<Up>"){
   songOffset -= 1;
   if(songOffset < 0)
   {
      songOffset = 0;
   }
}
