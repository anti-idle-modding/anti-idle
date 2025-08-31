onClipEvent(enterFrame){
   del += 1;
   if(del > 2)
   {
      del = 0;
      score = _parent._parent.field.stadiumHero.score;
      scoreText.text = _root.withComma(score);
      targetScale = _parent._parent.field.stadiumHero.health;
      hpBar._xscale += (targetScale - hpBar._xscale) / 2;
      order = 1;
      i = 1;
      while(i <= 4)
      {
         if(_parent._parent.field["stadiumEnemy" + i].score > score)
         {
            order += 1;
         }
         i++;
      }
      _Y = order * 20 - 20;
   }
}
