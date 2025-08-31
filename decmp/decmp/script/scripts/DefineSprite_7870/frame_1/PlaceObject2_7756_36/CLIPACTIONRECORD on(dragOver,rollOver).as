on(dragOver,rollOver){
   if(_root.save.fishLevel < 50)
   {
      if(_parent.ready == true && _root.save.coin >= coinCost)
      {
         _root.actiondescription = "<font color=\'#FFFF00\'><b>Skill Up</b></font>\nCost: <b>" + _root.withComma(coinCost) + "</b> Coins\n\nCatch more and better fish!";
      }
      else if(_parent.ready == true)
      {
         _root.actiondescription = "<font color=\'#FFFF00\'><b>Skill Up</b></font>\nCost: <b>" + _root.withComma(coinCost) + "</b> Coins\n\n<font color=\'#FF0000\'>You don\'t have enough Coins.</font>";
      }
   }
}
