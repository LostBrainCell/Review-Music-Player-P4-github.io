// New Sketch: Text; From Static to Procedural
//
int ShortSide;
/* Commented codes are null/useless
 PFont appFont;
 String title = "Title is here";
 String footer = "footer is here";
 */
// Values for Text
/*
float titleX, titleY;
 float footerX, footerY;
 */
int DIVvalue = 2;
float[] rectDIVX = new float[DIVvalue];
float[] rectDIVY = new float[DIVvalue];
float[] rectDIVWidth = new float[DIVvalue];
float[] rectDIVHeight = new float[DIVvalue];
//
void setup() {
  //Display
  //fullScreen();
  size(1000, 600);
  int appWidth = width;
  int appHeight = height;
  ShortSide = ( appWidth > appHeight ) ? appHeight : appWidth ;
  //
  println("Console");
  //DIV for Text
  /*
  titleX = appWidth*1/4;
   titleY = appHeight*1/4;
   rectDIVWidth[0] = appWidth*1/2;
   rectDIVHeight[0] = appHeight*1.5/10;
   */
  rectDIVX[0] = rectDIVX[1] = appWidth*1/4;
  rectDIVY[0] = appHeight*1/4;
  rectDIVWidth[0] = rectDIVWidth[1] = appWidth*1/2;
  rectDIVHeight[0] = appHeight*1.5/10;
  rectDIVY[1] = appHeight*3/4;
  rectDIVHeight[1] = appHeight*1/10;
  for (int i=0; i<DIVvalue; i++) {
    rect(rectDIVX[i], rectDIVY[i], rectDIVWidth[i], rectDIVHeight[i]);
  }
  //
  textSetup1(); //This code is moved over here?
  //rect(titleX, titleY, rectDIVWidth[0], rectDIVHeight[0]);
  //rect(footerX, footerY, rectDIVWidth[1], rectDIVHeight[1]);
  //
  for ( int i=0; i<DIVvalue; i++ ) {
    textDraw( fontSize[i], string[i], rectDIVX[i], rectDIVY[i], rectDIVWidth[i], rectDIVHeight[i] ); 
  }
  //
  //
  /* This Code isn't necessary here
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
   text(string[0], title, titleX, titleY, rectDIVWidth[0], rectDIVHeight[0]);
   text(string[1], footer, footerX, footerY, rectDIVWidth[1], rectDIVHeight[1]);
   color Blank = #FFFFFF;
   fill(Blank); //reset
   //
   println( "Text Width:", textWidth(string[0]), "v rectWidth:",  rectDIVWidth[0]);
   println( "Text Height:", fontSize, "v. rectHeight:",  rectDIVHeight[0] );
   println( "Calibri Bold Aspect Ratio ( fontSize/rect(height) ):", fontSize/rectDIVHeight[0] );
   //text(title, );
   //text(footer, );
   */
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
