// Mathieu's New Music Player
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Boolean musicButton=false;






//
void setup() {
  //Display 
  fullScreen(); 
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  musicPlayerSetup();
  //Population
  //
  //DIVs
  //rect(X, Y, Width, Height)
  //
  
}// End Setup
//
void draw() {
  if ( musicButton==true ) {
    //Music Player Code
    musicPlayerDraw();
    
    
  } //End MUSIC Button
}// End draw
//
void mousePressed() {
  musicPlayerMousePressed();
}// End MousePressed
//
void keyPressed() {
  musicPlayerKeyPressed();
}// End KeyPressed
//
