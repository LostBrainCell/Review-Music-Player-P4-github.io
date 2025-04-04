// Mathieu's New Music Player
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables

int appWidth, appHeight, shorterSide;

//
void setup() {
  //Display 
  fullScreen(); 
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  shorterSide = ( displayWidth < displayHeight ) ? displayWidth : displayHeight ;
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
  background(dayMode)
  rect( musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight );
  if ( musicButton==true ) {
     //Music Player Code
     musicPlayerDraw();
    } else {
      println("Music is OFF");
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
