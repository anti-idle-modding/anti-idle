on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 120)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Combo Strike</font></b> [Lv. " + skillLevel + "]\nCombo Cost: <font color=\'#FFFF00\'>" + comboReq + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font> + <font color=\'#0099FF\'>" + Math.floor(Math.min(_root.arenaCombo * 0.25,2500) * 1) + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nConsume COMBO to deal extreme damage and slow the monster down for 1 second. In addition, recover 50% HP and MP, and gain 10% Rage.";
      if(_root.save.arenaAuto == 5)
      {
         _root.actiondescription += "\n\nShift + Click to cancel automatic skill usage";
      }
      else
      {
         _root.actiondescription += "\n\nCtrl + Click to automatically use this skill for 30 minutes";
      }
   }
}
