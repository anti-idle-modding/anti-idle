onClipEvent(enterFrame){
   if(_root.house.arena.enemy.enemyID == 0 && timeLeft <= baseTime)
   {
      timeLeft = 0;
   }
}
