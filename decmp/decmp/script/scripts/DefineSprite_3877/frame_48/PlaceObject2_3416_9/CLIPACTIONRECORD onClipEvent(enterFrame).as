onClipEvent(enterFrame){
   del += 1;
   if(del == 10)
   {
      _root.raidDamage = 0;
   }
   parLeft = 0;
   parThis = 1;
   i = 0;
   while(i <= pars.length - 1)
   {
      if(_root.raidDamage >= pars[i])
      {
         _root.raidBonus = i;
         parLeft = _root.raidDamage - pars[i];
         parThis = pars[i + 1] - pars[i];
      }
      i++;
   }
   scoreText.text = "Score: " + _root.withComma(_root.raidDamage);
   bonusText.text = "+" + _root.raidBonus + " Bonus";
}
