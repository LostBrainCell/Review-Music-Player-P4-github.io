//Global Variables
//
void musicPlayerSetup() {
  //Population
  //
  //DIVs
  //rect(X, Y, Width, Height)
  //
  
}// End Setup
//
void musicPlayerDraw() {
  println(" Music SHOULD be playing");

}// End Draw
//
void musicPlayerMousePressed() {

}// End MousePressed
//
void musicPlayerKeyPressed() {
  //Music Button Activation
  if ( key=='M' || key='m' ) {
    if ( musicButton==true ) {
      musicButton=false;
    } else {
      musicButton=true;
    }

}// End KeyPressed
//
