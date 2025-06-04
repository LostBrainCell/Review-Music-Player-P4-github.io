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
float textWidthAlgorithm( float fontSize, int i) {
  float harringtonAspectRatio = 1.04;
  fontSize = fontSize * harringtonAspectRatio;
  //println("Aspect Ratio:", harringtonAspectRatio);
  //
  textFont(appFont, fontSize); //Manditory, for textWidth()
  float fontSize_temp=fontSize;
  if ( textWidth( string[i] ) > rectDIVWidth[i] ) {
    while ( textWidth( string[i] ) > rectDIVWidth[i] ) {
      fontSize_temp = fontSize_temp*0.99;
      textFont(appFont, fontSize_temp); //Manditory, for textWidth()
    }
    fontSize = fontSize_temp;
  }
  return fontSize;
} //End Text Width Algorithm
//
void textDraw( float fontSize, String text, float X, float Y, float W, float H ) { //Local Variables
  preTextDraw( fontSize );
  text(text, X, Y, W, H);
  resettingVariables();
} //End Text Draw
//
void preTextDraw( float fontSize) {
  color purpleInk = #2C08FF;
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(appFont, fontSize); //see variable note
  //textFont() has option to combine font declaration with textSize()
} //End Pre Text Code
void resettingVariables() {
  color whiteInk = #FFFFFF;
  fill(whiteInk); //reset
} //End Resetting Variables
//
//End Text Subprogram
