on(release){
   if(_root.save.hyperDay[_root.save.hyperDayDel] == _parent.tomorrowCode)
   {
      _root.save.hyperDayRem += 1;
      _root.save.botPill += 1;
      _root.save.hyperDay[_root.save.hyperDayDel] = 0;
      if(_root.save.hyperDayDel == 2)
      {
         _root.save.hyperDayDel = 1;
      }
      else
      {
         _root.save.hyperDayDel = 2;
      }
      _root.save.hyperDayCount += 1;
      _root.showPopup("Success","Tomorrow is no longer a Hyper Day. You have received your EXPILL back.");
      _root.actiondescription = "";
   }
}
