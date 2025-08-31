on(dragOver,rollOver){
   focus = true;
   if(_root.fishArray[_parent.ID].fatigue > 0)
   {
      _root.actiondescription = "Fatigue: <b>-" + _root.fishArray[_parent.ID].fatigue + "</b>\n";
   }
   if(_alpha == 100)
   {
      if(_parent.ID >= 11)
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>You can eat up to <b>" + _root.save.fishFoodCooldown + "</b> more fish today.</font>";
      }
      else
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>You can drink up to <b>" + _root.save.fishDrinkCooldown + "</b> more Energy Drink for full effect today.</font>";
      }
   }
}
