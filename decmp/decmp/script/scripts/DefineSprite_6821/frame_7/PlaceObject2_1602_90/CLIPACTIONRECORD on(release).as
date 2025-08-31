on(release){
   if(_root.save.arcadeDifficulty[5] < 3)
   {
      _root.save.arcadeDifficulty[5] += 1;
   }
   else if(_root.save.arcadeDifficulty[5] < 4)
   {
      if(_root.arcadeTmpRatingGame[5][0] + _root.arcadeTmpRatingGame[5][1] + _root.arcadeTmpRatingGame[5][2] >= 300)
      {
         _root.save.arcadeDifficulty[5] += 1;
      }
      else
      {
         _root.showPopup("Locked!","Achieve a Rating of 3.00 in this game to unlock ANOTHER difficulty!");
      }
   }
}
