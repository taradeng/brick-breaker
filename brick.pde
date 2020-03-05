class Brick {
  //1. Instance variables - defines what info a brick knows 
  //it should know number of hits, colour, x and y 
  float x, y;
  color c;
  color b;
  color a;
  int hp;

  //hp hit points
  //2. Constructor - initializes the instance variables : avoid the void, same name as the class
  Brick() {
    x= gridx;
    y= gridy;
    hp = 1;
    c = #FFFFFF;
    b = #485A5E;
    a = #517166;
    hp = 3;
  }


  //3. Behaviour functions - define what a brick can do
  void act() {
    if (hp> 0 && dist(bx, by, x, y) < 35) { 
      hp = hp - 1; 
      bvx = (bx-x)/10;
      bvy=(by-y)/10;
    }
  } 

  void show() {

    if (hp == 1) {
      fill(c);
    } 
    if (hp==2) {
      fill(b);
    }
    if (hp==3) {
      fill(a);
    }
    if (hp>0) {
      ellipse(x, y, 50, 50);
    }
    if (hp==0) {
      score=score+1;
  }
}
}
