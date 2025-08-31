onClipEvent(enterFrame){
   textBox.text = _root.withComma(_root.save.gardenResearch) + " / " + _root.withComma(_parent.reqResearch);
   insideBar.xscale = _root.save.gardenResearch / _parent.reqResearch * 100;
}
