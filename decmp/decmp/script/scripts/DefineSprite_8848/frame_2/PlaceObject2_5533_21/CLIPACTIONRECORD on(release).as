on(release){
   if(_alpha == 100)
   {
      _root.bTitle = _parent.titleText.text;
      _root.bDesc = _parent.descText.text;
      _root.bScreenshot = _parent.ssText.text;
      _parent.gotoAndStop(3);
   }
}
