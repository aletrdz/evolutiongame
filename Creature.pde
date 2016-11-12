
class Creature {
  float posx;
  float posy;
  //int evolutionCounter;
  int score;

  int blobsr;
  int blobsg;
  int blobsb;
  int nucr;
  int nucg;
  int nucb;
  int dotsr;
  int dotsg;
  int dotsb;


  Creature(int x, int y, int ec, int br, int bg, int bb, int nr, int ng, int nb, int dr, int dg, int db) {

    posx=x;

    posy=y;
    //evolutionCounter=ec;

    blobsr=br;
    blobsg=bg;
    blobsb=bb;
    nucr=nr;
    nucg=ng;
    nucb=nb;
    dotsr=dr;
    dotsg=dg;
    dotsb=db;
    score = 0;
  }

  void display () {
    noStroke();
    fill(blobsr, blobsg, blobsb);
    ellipse(posx, posy, 100, 100);


    if (score>=20) {
      finalstage();
      noStroke();
      fill(blobsr, blobsg, blobsb);
      ellipse(posx, posy, 100, 100);
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      nucleus();
      dots();
      dots();
      dots();
      dots();
      dots();
      dots();
      dots();
      eyes();
    } else if (score>=15) {
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      nucleus();
      dots();
      dots();
      dots();
      dots();
      dots();
      dots();
      dots();
      eyes();
    } else if (score>=10) {
      //level3 dots
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      nucleus();
      dots();
      dots();
      dots();
      dots();
      dots();
      dots();
      dots();
    } else if (score>=5) {
      //level2 Nucleus
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      nucleus();
    } else if (score>=0) {
      //level1 Blobs

      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
      blobs();
    }
  }

  void blobs() {
    float r;
    r=random(30, 50);
    noStroke();
    fill(blobsr, blobsg, blobsb);
    ellipse(posx+random(-40, 40), posy+random(-40, 40), r, r);
  }

  void nucleus() {
    fill(120, 150, 70);
    ellipse(posx+random(-20, 20), posy+random(-20, 20), 40, 40);
  }
  void dots() {
    float dotx;
    float doty;
    dotx=posx+random(-50, 50);
    doty=posy+random(-50, 50);
    fill(dotsr, dotsg, dotsb);
    ellipse(dotx, doty, 5, 5);
    dotx=dotx+random(-1, 1);
    doty=doty+random(-1, 1);
  }

  void eyes() {
    float eyex;
    float eyey;
    eyex=posx+random(-30, 30);
    eyey=posy+random(-30, 30);
    fill(225);
    ellipse(eyex, eyey, 20, 20);
    fill(0);
    ellipse(eyex, eyey, 10, 10);
  }

  void finalstage() {
    fill(nucr, nucg, nucb, 100);
    ellipse(posx+random(-20, 20), posy+random(-20, 20), 150, 150);
    fill(120, 70, 150, 50);
    ellipse(posx+random(-10, 10), posy+random(-10, 10), 200, 200);
  }

  void checkCollision() {
    for (int x = 0; x < foodArray.size(); x++) {
      //Food foodie = foodArray.get(x);

      float locx = foodArray.get(x).posX;
      float locy = foodArray.get(x).posY;

      if (dist(posx, posy, locx, locy) <= 100) {
        score++;
        //evolutionCounter++;
        foodArray.remove(x);
        isArrayEmpty();
      }
    }
  }

  void isArrayEmpty() {

    if (foodArray.isEmpty() == true) {
      for (int m = 0; m <3; m++) {
        Food comida = new Food();
        foodArray.add(comida);
      }
    }
  }
  void end() {
    if (a.score == 25) {
      pushMatrix();
      translate(150,350);
      rotate(PI);
      text("Green Creature wins!", 0, 0);
      popMatrix();
    } else if (b.score == 25) {
      text("Purple creature wins!", 150,250);
    } else if (a.score > 27 || b.score > 27) {
      a.score = 0;
      b.score = 0;
    }
  }
}