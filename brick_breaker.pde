//mode framework variables final int INTRO = 1;
//QUIZ on dist(x1, y1, x2, y2)
// if (dist(bx, by, px, py) < 60) {
// 
//}
ArrayList<Brick> myBricks;
final int GAME  = 2;

final int GAMEOVER = 3;

final int PAUSE = 4;
final int INTRO = 5;
final int OPTIONS = 6;
final int WIN = 7;
final int LOSE = 8;
int score;
int lives;
int slider = 150;
int slider2 = 400;
int mode = INTRO;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause



//ball variables
float bx, by, bvx, bvy; //ball variables

//paddle variables 
float px, py;

//keyboard variables 
boolean leftKey, rightKey;

//brick planning variables 
float gridx, gridy;

//speed? 
//float vx, vy;


void setup() { 
  size(800, 600);
  myBricks = new ArrayList<Brick>();

  int i = 0;
  while (i<33) {
    myBricks. add( new Brick() ) ; // calling constructor (invoke) 
    gridx = gridx + 75;
    if (gridx > 800) {
      gridx= 25;
      gridy = gridy+100;
    }   
    i=i+1;
  }



  //ball 
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;

  //variables 
  px = width/2;
  py = height+10;
}




void draw() {

  if (mode == INTRO) {
    intro();
    
  }else if (mode == OPTIONS) {
    options();
    
  } else if (mode == WIN) {
    
    win();
    
  } else if (mode == LOSE) {
    
    lose();
  } else if (mode == GAME) {

    game();
  } else if (mode == GAMEOVER) {

    gameover();
  } else if (mode == PAUSE) {  

    pause();
  } else {

    println("PAUSED");
  }
}
