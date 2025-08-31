on(release){
   if(_root.save.apocSecretKill >= 200)
   {
      _root.fightStat2 = "Voice: \"Run, run for your lives!\"";
      _root.house.arena.travel(destination);
   }
   else
   {
      _root.showPopup("Access Denied","Get rid of the triangles first!");
   }
}
