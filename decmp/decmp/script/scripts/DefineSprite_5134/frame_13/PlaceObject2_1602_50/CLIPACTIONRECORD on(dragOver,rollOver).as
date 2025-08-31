on(dragOver,rollOver){
   if(_root.save.arenaChaosMax >= 15 && _root.save.arenaChaosMax < 21)
   {
      _root.actiondescription = "Click here to increase Dark Shard limit by 1 for <b>" + _root.withComma(costArr[_root.save.arenaChaosMax]) + "</b> Pixels.";
   }
   else
   {
      _root.actiondescription = "";
   }
}
