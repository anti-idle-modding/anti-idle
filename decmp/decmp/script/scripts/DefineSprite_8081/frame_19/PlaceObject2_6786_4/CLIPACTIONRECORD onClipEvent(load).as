onClipEvent(load){
   function speech(mess)
   {
      gotoAndStop(1);
      messText.text = mess;
      targetAlpha = 400;
   }
   tempSpeech = 0;
   speech("Hello! I am the Dragon of Wisdom. I know many things that you don\'t, but as you can see (can you?), I\'m really hungry for food. So, feed me!");
   if(_root.save.level < 50)
   {
      speech("Welcome to Anti-Idle: The Game!");
   }
}
