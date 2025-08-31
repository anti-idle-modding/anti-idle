on(dragOver,rollOver){
   if(_root.save.rewardBotTime > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Idlebot is Working!</font></b>\nIdlebot will turn Idle Mode ON/OFF automatically depending on whether or not you are active. Even when inactive, the first half of the Progress Bar is filled at Idle Mode OFF speed!";
   }
   else if(_root.save.featureIdleMode == true)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Idle Mode</font></b>\nWhen Idle Mode is ON, you don\'t have to interact with the keyboard or mouse to claim rewards from the Progress Bar. However, when Idle Mode is OFF, the Progress Bar fills more quickly.\n\nYou can click this button to turn Idle Mode ON/OFF.";
   }
}
