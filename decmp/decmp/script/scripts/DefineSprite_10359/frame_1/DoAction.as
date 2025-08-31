stop();
_root.my_soOld = SharedObject.getLocal("antiidleX","/");
if(_root.saveid == 0)
{
   _root.my_soOld = SharedObject.getLocal("antiidleX","/");
}
if(_root.saveid == 1)
{
   _root.my_soOld = SharedObject.getLocal("antiidleX1","/");
}
if(_root.saveid == 2)
{
   _root.my_soOld = SharedObject.getLocal("antiidleX2","/");
}
if(_root.saveid == 3)
{
   _root.my_soOld = SharedObject.getLocal("antiidleX3","/");
}
_root.saveOld = _root.my_soOld.data;
