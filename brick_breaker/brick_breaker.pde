//mode framework variables final int INTRO = 1;
//QUIZ on dist(x1, y1, x2, y2)
// if (dist(bx, by, px, py) < 60) {
// 
//}
final int GAME  = 2;

final int GAMEOVER = 3;

final int PAUSE = 4;
final int INTRO = 5;

int mode = GAME;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause


//ball variables
float bx, by, bvx, bvy; //ball variables

//paddle variables 
float px, py;

//keyboard variables 
boolean leftKey, rightKey;

//speed? 
//float vx, vy;







void setup() {

  size(800, 600);
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

  } else if (mode == GAME) {

    game();

  } else if (mode == GAMEOVER) {

    gameover();

  } else if (mode == PAUSE) {  

    pause();

  } else {

    println("?");

  }
  

}
