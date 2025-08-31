onClipEvent(enterFrame){
   hp = _root.fcg_opponent_chp;
   attack = _root.fcg_opponent_catk;
   defense = _root.fcg_opponent_cdef;
   numberdisp = "HP: " + hp + " | " + attack + " / " + defense;
   insideBar.xscale = hp;
}
