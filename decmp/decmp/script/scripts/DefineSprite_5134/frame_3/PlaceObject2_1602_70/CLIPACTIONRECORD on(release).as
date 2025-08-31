on(release){
   baconToGive = Math.ceil(_root.save.arenaBacon / 10);
   if(baconToGive > 9999999 - _root.save.robaconBacon)
   {
      baconToGive = 9999999 - _root.save.robaconBacon;
   }
   _root.save.arenaBacon -= baconToGive;
   _root.save.robaconBacon += baconToGive;
}
