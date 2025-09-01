on(release){
   if(_root.save.featureIdleMode == true && _root.save.idleMode == false && _root.save.rewardClaim >= 5 && _root.save.rewardBotTime <= 0)
   {
      _root.save.idleMode = true;
   }
   else if(_root.save.featureIdleMode == true && _root.save.idleMode == true)
   {
      _root.save.idleMode = false;
   }
   else if(_root.save.rewardBotTime <= 0)
   {
      if(_root.save.rewardClaim >= 5)
      {
         _root.showPopup("Buy Idle Mode now!","You have to purchase Idle Mode in the shop.");
      }
      else
      {
         _root.showPopup("Not ready yet!","You have to claim 5 rewards before you turn Idle Mode on.");
      }
   }
}
