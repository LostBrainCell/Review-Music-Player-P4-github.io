// 
PFont appFont;
float[] fontSize = new float[DIVvalue];
String[] string = new String[DIVvalue];
//
void textSetup1() {
  //fontSize = shorterSide;
  appFont = createFont("Calibri Bold", fontSize);
  //
  for( int i=0; i<DIVvalue; i++ ) {
    fontSize[i] = shorterSide;
  }
  StringVarsEntry();
  //
}
//
void StringVarsEntry() {
  string[0] = "Title is here";
  string[1] = "footer is here";
}
//
void FontSizeAlogrithm( float fontSize, int i ) {
  fontSize = textHeightAlgorithm( fontSize, i );
  fontSize;
}
//
void textHeighthAlgorithm( float fontSize, int i ) {
  //
  /*
  fontSize = ShortSide;
  //
  for ( int i=0; i<rectDIVHeight.length; i++ ) {
    if ( fontSize > rectDIVHeight[i] ) fontSize = rectDIVHeight[i];
  }
  float CalibriBoldAspectRatio = 1.04;
  fontSize = fontSize * CalibriBoldAspectRatio; {
  //
  for ( int i=0; i<rectDIVHeight.length; i++ ) {
    if ( fontSize > rectDIVHeight[i] ) fontSize = rectDIVHeight[i];
    println();
  }
  //
  textFont(appFont, fontSize); 
  float fontSize_temp=fontSize
  for ( int i=0; i<rectDIVWidth.length; i++ ) {
    if ( rectDIVWidth[i] < textWidth( string[i] ) ) {
      while ( rectDIVWidth[i] < textWidth( string[i] ) ) {
        fontSize_temp = fontSize*0.99;
        textFont(appFont, fontSize); 
      }
      fontSize = fontSize_temp;
    }
    textFont(appFont, fontSize);
  }
  */
}
//
void TextWidthAlgorithm( float fontSize, int i ) {
}//
//
void 
