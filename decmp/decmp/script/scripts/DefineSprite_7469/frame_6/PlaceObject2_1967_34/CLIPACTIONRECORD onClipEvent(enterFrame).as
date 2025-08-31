onClipEvent(enterFrame){
   textBox.text = _root.withComma(_root.save.progBoxCount) + " / 2,500";
   insideBar.xscale = _root.save.progBoxCount / 25;
}
