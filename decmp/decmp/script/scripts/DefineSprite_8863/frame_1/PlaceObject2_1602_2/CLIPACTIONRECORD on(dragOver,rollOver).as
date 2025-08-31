on(dragOver,rollOver){
   _root.checkCareer();
   activeCost = Math.floor(10 * _parent.costMultiplier * (Math.sqrt(_root.save.bestLevel) + Math.sqrt(_root.save.careerLevel[_parent.careerID]))) * 1000 + Math.floor(_root.careerActivated * Math.sqrt(_root.save.bestLevel) * 10000) * 5000;
   _root.actiondescription = "Click here to activate this career!\n\nActivation Cost:\n<b>" + _root.withComma(activeCost) + "</b> Coins";
}
