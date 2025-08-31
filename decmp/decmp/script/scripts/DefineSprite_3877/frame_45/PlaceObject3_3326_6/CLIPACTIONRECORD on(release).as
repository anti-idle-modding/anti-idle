on(release){
   if(_root.house.arena.enemy.enemyID == 0 && _root.save.arenaLevel >= 160 && _root.towerCooldown <= 0)
   {
      _root.towerCooldown = 90;
      _root.house.arena.travel(destination);
   }
   else if(_root.save.arenaLevel < 160)
   {
      _root.showPopup("Access Denied","One of the crates in the Tower of DOOOOOOM laughed at you: \'What is this, a Rank " + _root.save.arenaLevel + " noob trying to conquer the Tower of DOOOOOOM? Go to the Mystic Forest instead.\'");
   }
   else if(_root.towerCooldown > 0)
   {
      _root.showPopup("Access Denied","You better wait " + _root.withComma(_root.towerCooldown) + " seconds before entering again. Otherwise, those \"guards\" will recognize you trying to \"cheat\" by killing only the first few monsters over and over... and that\'s bad.");
   }
   else
   {
      _root.showPopup("Access Denied","You have to get rid of that monster first.");
   }
}
