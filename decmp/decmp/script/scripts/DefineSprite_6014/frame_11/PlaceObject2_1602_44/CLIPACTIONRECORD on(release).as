on(release){
   if(_root.save.arenaProofTraining >= _parent.cost4 && _root.save.arenaRevengeEntry < 999)
   {
      _root.save.arenaProofTraining -= _parent.cost4;
      _root.dispNews(64,"THE MEGABOSS\'s Revenge entry purchased! (-" + _root.withComma(_parent.cost4) + " Proof of Training)");
      _root.save.arenaRevengeCraftT += 1;
      _root.save.arenaRevengeEntry += 1;
      _parent.checkCost();
      _root.actiondescription = "Click here to get 1 more THE MEGABOSS\'s Revenge entry for <b>" + _root.withComma(_parent.cost4) + "</b> Proof of Training.";
   }
}
