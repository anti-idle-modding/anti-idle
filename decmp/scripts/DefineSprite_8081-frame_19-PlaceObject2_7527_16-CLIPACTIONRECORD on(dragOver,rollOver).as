on(dragOver,rollOver){
   if(_root.save.dragonReward == 0)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 100! Here are some Cards to help you. Different Cards have different effects. Use them in the Cards screen (World -> Cards)!\n\nReach Lv. 250 to claim your next reward!";
   }
   else if(_root.save.dragonReward == 1)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 250! Here are two Legendary Boxes, which contain random Cards! Open them in the Mystery Box screen (World -> Mystery Box). There are many other types of Mystery Boxes available too. You can get them from various places, or buy them from the Mystery Shop.\n\nReach Lv. 500 to claim your next reward!";
   }
   else if(_root.save.dragonReward == 2)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 500! Here are 5,000 Quest Tokens, which you can use to buy awesome items in the Special Shop! Visit the Special Shop by pressing the Quest or Event buttons below, then click the Special Shop button. If you haven\'t unlocked the Special Shop yet, you will need to pay 10,000 Quest Tokens.\n\nReach Lv. 1,000 to claim your next reward!";
   }
   else if(_root.save.dragonReward >= 3 && _root.save.dragonReward <= 10)
   {
      _root.actiondescription = "Congratulations on reaching Lv. " + _root.withComma(1000 + (_root.save.dragonReward - 3) * 1000) + "! Here is a Supply Crate to help you. The Supply Crate contains various items in different features to help you progress faster!\n\nKeep leveling up to get more rewards!";
   }
   else if(_root.save.dragonReward == 11)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 9,000! Here is a Supply Crate to help you. After reaching Lv. 9,000, you can ascend by taking the sword in this screen to the Ye Olde Pub in the Battle Arena and then battle The Ascendant!";
   }
   else if(_root.save.dragonReward == 12)
   {
      _root.actiondescription = "Congratulations on reaching Lv. 9,001! Here is another Supply Crate to help you.";
   }
}
