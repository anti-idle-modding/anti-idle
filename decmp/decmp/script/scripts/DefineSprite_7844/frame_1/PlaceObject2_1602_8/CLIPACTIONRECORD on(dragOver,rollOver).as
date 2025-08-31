on(dragOver,rollOver){
   focus = true;
   if(_alpha == 100)
   {
      _root.actiondescription = "Crafting Material: <b>+" + _root.withComma(Math.round(_root.fishArray[_parent.ID].material * mult)) + "</b>";
   }
}
