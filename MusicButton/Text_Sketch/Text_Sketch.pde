// New Sketch: Text; From Static to Procedural
//
String title = "Title is here";
String footer = "footer is here";
//
//Display
//fullScreen();
size(800, 400);
int appWidth = width; 
int appHeight = height;
int ShortSide = ( appWidth > appHeight ) ? appHeight : appWidth ;
//
println("Console");
/*
String[] fontList = PFont.list(); //Lists all available font?
printArray(fontList);
*/
PFont titleFont = createFont("Calibri-LightItalic-48", ShortSide);
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
float fontSize = 10 ;//Keep changing number until fonts fits
println("Manuel entered font size", fontSize);
//float CalibriLightItalicAspectRatio = fontSize / titleHeight
//fontSize = titleHeight * CalibriLightItalicAspectRatio;
//println("Aspect Ratio", CalibriLightItalicAspectRatio );
//println(); //Skip a line or something
//
//Minimmum lines of code and something more and stuff

//
//text(title, );
//text(footer, );
