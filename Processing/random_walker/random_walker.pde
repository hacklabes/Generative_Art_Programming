import java.util.*; 

Walker w;

void setup(){
  size(900,900);
  smooth();
  background(255);
  w = new Walker();
  frameRate(240);

}

void draw(){
  float diam = dist(w.prevX, w.prevY, w.x, w.y);
  ellipse((w.x + w.prevX)/2, (w.y+w.prevY)/2, diam,diam);
  noStroke();
  fill(random(255));
 
  w.step();
}


void keyPressed(){
 if(key == 's'){
  Date d = new Date(); 
  String fname = "output-"+ d.getTime() + ".png";
  save(fname); 
 }
}

// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// A random walker object!

class Walker {
  float x, y;
  float tx, ty;

  float prevX, prevY;

  Walker() {
    tx = 0;
    ty = 10;
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    prevX = x;
    prevY = y;
  }

  void render() {
    stroke(255);
    line(prevX, prevY, x, y);
  }

  // Randomly move according to floating point values
  void step() {

    prevX = x;
    prevY = y;

    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);

    tx += 0.01;
    ty += 0.01;

  }
}