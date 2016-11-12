Creature a;
Creature b;

int counterA = 0;
int counterB = 0;
boolean playGame = true;

boolean aupPressed;
boolean adownPressed;
boolean aleftPressed;
boolean arightPressed;

boolean bupPressed;
boolean bdownPressed;
boolean bleftPressed;
boolean brightPressed;



ArrayList<Food> foodArray;
Food test;

void setup () {
  size (600, 600);
  background (0, 0, 0);

  aupPressed= false;
  adownPressed=false;
  aleftPressed= false;
  arightPressed=false;
  bupPressed= false;
  bdownPressed=false;
  bleftPressed= false;
  brightPressed=false;

  a= new Creature (200, 200, 0, 120, 240, 20, 120, 150, 70, 120, 150, 150);
  b= new Creature (width-200, height-200, 0, 120, 20, 240, 120, 70, 150, 200, 120, 150);
  a.display();
  b.display();

  test = new Food();
  foodArray = new ArrayList<Food>();

  for (int i =0; i<3; i++) {
    Food comida = new Food();
    foodArray.add(comida);
  }
}

void draw () {
  background (0, 0, 0);
  a.display();
  b.display();

  textSize(32);
  pushMatrix();
  translate(100, 100);
  rotate(PI);
  fill(120, 240, 20);
  text(a.score, 0, 0);
  popMatrix();
  fill(120, 20, 240);
  text(b.score, width-100, height-100);

  //keyPressed();

  //checkCollision();

  for (int i = 0; i < foodArray.size(); i++) {

    Food comida = foodArray.get(i);
    comida.display();
  }
  move();
  a.checkCollision();
  b.checkCollision();
  a.end();
  b.end();
}


void keyPressed() {
  if (keyCode==UP) {
    bupPressed=true;
  }
  if (keyCode==DOWN) {
    bdownPressed=true;
  }
  if (keyCode==LEFT) {
    bleftPressed=true;
  }
  if (keyCode==RIGHT) {
    brightPressed=true;
  }
  if (key=='w') {
    adownPressed=true;
  }
  if (key=='s') {
    aupPressed=true;
  }
  if (key=='a') {
    arightPressed=true;
  }
  if (key=='d') {
    aleftPressed=true;
  }
}

void keyReleased() {
  if (keyCode==UP) {
    bupPressed=false;
  }
  if (keyCode==DOWN) {
    bdownPressed=false;
  }
  if (keyCode==LEFT) {
    bleftPressed=false;
  }
  if (keyCode==RIGHT) {
    brightPressed=false;
  }
  if (key=='w') {
    adownPressed=false;
  }
  if (key=='s') {
    aupPressed=false;
  }
  if (key=='a') {
    arightPressed=false;
  }
  if (key=='d') {
    aleftPressed=false;
  }
}

void move() {
  if (aupPressed) {
    a.posy= a.posy-10;
  }
  if(adownPressed) {
    a.posy= a.posy+10;
  }
  if (aleftPressed) {
    a.posx= a.posx-10;
  }
  if (arightPressed) {
    a.posx= a.posx+10;
  }
  if (bupPressed) {
    b.posy= b.posy-10;
  }
  if (bdownPressed) {
    b.posy= b.posy+10;
  }
  if (bleftPressed) {
    b.posx= b.posx-10;
  }
  if (brightPressed) {
    b.posx= b.posx+10;
  }
}
//void checkCollision(){
//  //PVector bVect = PVector.sub(other.position, position);
//  //float bVectMag = bVect.mag();

//  if (dist(a.posx, a.posy, b.posx, b.posy) <= 100 && condition == true){
//    counterA ++;
//    condition = false;
//    counterB ++;
//    condition = false;

//  }

//}