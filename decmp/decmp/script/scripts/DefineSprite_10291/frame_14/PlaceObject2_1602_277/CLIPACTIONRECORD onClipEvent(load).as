onClipEvent(load){
   function checkAlpha()
   {
      if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
      {
         _alpha = 30;
      }
      else if(_root.save.petMana >= 150)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   function doThis()
   {
      if(!(_root.save.gDifficulty >= 3 && _root.save.level < 8999))
      {
         if(_root.save.petMana >= 150)
         {
            if(_root.save.careerLevel[11] < 200 || Math.random() < 0.7)
            {
               _root.save.petMana -= 150;
            }
            _root.gainCareerEXP(11,1500,true);
            _root.progPercent += 3500;
            _root.dispNews(154,"You have gained 35 Insta-Progress!");
            _parent.checkStuff();
         }
      }
   }
   focus = false;
   checkAlpha();
}
