onClipEvent(enterFrame){
   if(_root.house.arena.enemy.enemyID == 350 && timeLeft <= baseTime)
   {
      timeLeft = 1;
      autoKick = false;
   }
}
