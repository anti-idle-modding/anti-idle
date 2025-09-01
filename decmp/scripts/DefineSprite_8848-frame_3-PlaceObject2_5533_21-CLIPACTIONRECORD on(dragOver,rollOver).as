on(dragOver,rollOver){
   if(_parent.bugType == 1 || _parent.bugType == 2 || _parent.bugType == 10)
   {
      _root.actiondescription = "After pressing \'Submit\', press \'Reply to topic\', press CTRL + V in the text box then press \'Submit Reply\'.";
   }
   if(_parent.bugType == 3)
   {
      _root.actiondescription = "After pressing \'Submit\', press CTRL + V in the white box then press \'Send\'.";
   }
}
