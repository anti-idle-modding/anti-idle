on(release,keyPress "<Left>"){
   if(_parent.auView > 1)
   {
      _parent.auView -= 1;
      _parent.pop1.targetMove += 650;
      _parent.pop2.targetMove += 650;
   }
}
