onClipEvent(load){
   function clickOutside()
   {
      _root.summonCount += 1;
      _root.antiLag += 1;
      _parent.button.attachMovie("buttonDamagePop","buttonDamagePop" + _root.summonCount,_root.antiLag,{_x:_parent.button._xmouse,_y:_parent.button._ymouse,rank:1});
      _root.buttonHitCombo = 0;
   }
}
