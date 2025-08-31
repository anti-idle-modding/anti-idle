on(release){
   if(_root.save.greenCoin >= 2)
   {
      _root.save.greenCoin -= 2;
   }
   _root.harvestAllTree();
   checkDelay = 80;
}
