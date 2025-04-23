// New Sketch: Text; From Static to Procedural
//
PFont appFont;
String title = "Title is here";
String footer = "footer is here";
//
void setup() {
  //Display
  //fullScreen();
  size(1000, 600);
  int appWidth = width;
  int appHeight = height;
  int ShortSide = ( appWidth > appHeight ) ? appHeight : appWidth ;
  //
  println("Console");
  /*
  String[] fontList = PFont.list(); //Lists all available font?
   printArray(fontList);
   */
  appFont = createFont("Calibri Bold", ShortSide);
  //
  //DIV for Text
  float titleX, titleY, titleWidth, titleHeight;
  float footerX, footerY, footerWidth, footerHeight;
  //
  titleX = appWidth*1/4;
  titleY = appHeight*1/4;
  titleWidth = appWidth*1/2;
  titleHeight = appHeight*1/10;
  //
  footerX = appWidth*1/4;
  footerY = appHeight*3/4;
  footerWidth = appWidth*1/2;
  footerHeight = appHeight*1/10;
  rect(titleX, titleY, titleWidth, titleHeight);
  rect(footerX, footerY, footerWidth, footerHeight);
  //
  float fontSize = 30 ;//Keep changing number until fonts fits
  println("Manuel entered font size", fontSize);
  float CalibriBoldAspectRatio = fontSize / titleHeight;
  fontSize = titleHeight * CalibriBoldAspectRatio;
  //println("Aspect Ratio", CalibriBoldAspectRatio );
  textFont(appFont, fontSize);
  while ( footerWidth < textWidth(footer) ) {
    fontSize = fontSize*0.99;
  }
  //println(); //Skip a line or something
  //
  //Minimmum lines of code and something more and stuff
  color Blue = #5358DE;
  fill(Blue); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  textFont(titleFont, fontSize); //see variable note
  //Drawing Text
  text(title, titleX, titleY, titleWidth, titleHeight);
  text(footer, footerX, footerY, footerWidth, footerHeight); 
  color Blank = #FFFFFF;
  fill(Blank); //reset
  //
  println( "Text Width:", textWidth(title), "v rectWidth:", titleWidth ); 
  println( "Text Height:", fontSize, "v. rectHeight:", titleHeight );
  println( "Calibri Bold Aspect Ratio ( fontSize/rect(height) ):", fontSize/titleHeight ); 
  //text(title, );
  //text(footer, );
}
//
void draw() {
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
