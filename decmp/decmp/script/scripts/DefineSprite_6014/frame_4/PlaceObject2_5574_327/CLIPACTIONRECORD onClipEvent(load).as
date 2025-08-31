onClipEvent(load){
   cpText.text = _root.withComma(_root.save.collectionPoint);
   peakText.text = "Peak: " + _root.withComma(_root.save.collectionPointMax);
}
