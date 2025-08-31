on(keyPress "<Down>"){
   songOffset += 1;
   if(songOffset > songMaxOffset)
   {
      songOffset = songMaxOffset;
   }
}
