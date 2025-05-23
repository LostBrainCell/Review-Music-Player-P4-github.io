//Global Variables
Boolean musicButton=false;
//
Minim minim;
int numberOfSongs = 1;
//int numberOfSoundEffects = ???
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
float musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight;
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
color nightMode=#FFFF00, dayMode=#FFFFFF;
color resetDefaultColour=#FFFFFF;
color MusicButtonColour=#5894E5;
//
void musicPlayerSetup() {
  //Population
  musicButtonWidth = shorterSide*1/20;
  musicButtonX = 0;
  musicButtonY = 0;
  musicButtonHeight = shorterSide*1/20;
  musicMenuX = appWidth*1/4;
  musicMenuY = appHeight*1/4;
  musicMenuWidth = appWidth*1/2;
  musicMenuHeight = appHeight*1/2;
  //
  //DIVs
  
  //rect(X, Y, Width, Height);
  //rect(musicButtonX, musicButtonY, musicButtonWidth, musicButtonHeight);
  //rect(musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight);
  //
  //Music Loading - STRUCTURED Review, make this Procedural
  minim = new Minim(this);
  //String[] fileName = new String[ numberOfSongs ];
  //Alternate Reading of Array
  String musicPathway = "Music/";
  String MusicConnect = "../" + musicPathway;
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String BeatIt = "Beat_Your_Competition";
  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  String fileExtension_mp3 = ".mp3";
  //
  String file = MusicConnect + BeatIt + fileExtension_mp3; //relative pathway or directory
  println( file );
  //Create a FOR loop to loadFile() a changing songName
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //Music Testing
  playList[currentSong].play();
  //
}// End Setup
//
void musicPlayerDraw() {
  println(" Music SHOULD be playing");
  //background();
  musicPlayerGUI( musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight );
}// End Draw
//
void musicPlayerMousePressed() {
  if ( mouseX>musicButtonX && mouseX<musicButtonX+musicButtonWidth && mouseY>musicButtonY && mouseY<musicButtonY+musicButtonHeight ) {
    musicButtonSwitch();
  }
  //
  // Activate the Music Menu on Mouse Pressed
  if ( musicButton==true ) {
    //IFs for Music Music Menu Mouse X&Y
  } else {
    //Regular Program overlapping Music Menu
  }
}// End MousePressed
//
void musicPlayerKeyPressed() {
  //Music Button Activation
  if ( key=='M' || key=='m' ) {
    musicButtonSwitch();
  }//Music Button Activation
  //
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ;
   */
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) playList[currentSong].loop(); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key==CODED || key==RIGHT ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key==CODED || key==LEFT ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='M' || key=='m' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
    }
  }
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  //if ( key=='P' || key=='p' ) ; // Previous //Students to finish
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
}// End KeyPressed
//
void musicPlayerGUI( float X, float Y, float Width, float Height ) {
  fill(nightMode);
  rect( X, Y, Width, Height );
  fill(resetDefaultColour);
}//End Music Player GUI
//
void musicButtonSwitch() {
  if ( musicButton==true ) {
    musicButton=false;
  } else {
    musicButton=true;
  }
}//End Music Button Switch
//
//End Subprogram Music Player
