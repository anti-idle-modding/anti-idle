onClipEvent(enterFrame){
   hp = _root.fcg_player_chp;
   attack = _root.fcg_player_catk;
   defense = _root.fcg_player_cdef;
   numberdisp = "HP: " + hp + " | " + attack + " / " + defense;
   insideBar.xscale = hp;
   insideBar._x = (100 - insideBar._xscale) * 2;
}
