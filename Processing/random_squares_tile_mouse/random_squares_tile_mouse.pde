import java.util.*; 

float line = 0; 
float column = 0; 
float w = 0;
PGraphics buffer;

void setup() {
  size(800, 800);
  background(255);
  //noLoop();
  w = 200;

  buffer = createGraphics(200, 200);
}


void draw() {
  float step = 100;
  for (int x = 0; x < width; x+=step) {
    for (int y =0; y < height; y+=step) {
      w = step;
      while (w >=0.1) {
        randomShape(buffer, 0, 0, w);
        //w = w * exp(-map(mouseX,0,width,0.1,1.0));
        //w = w - map(mouseX,0,width,10,50);
        w = w -10;
      }
      image(buffer, x, y, step, step);
    }
  }
  //noLoop();
}

void keyPressed() {
  if (key == ' ') {
    noLoop();
  } else  if (key == 's') {
    Date d = new Date(); 
    String fname = "output-"+ d.getTime() + ".png";
    save(fname);
  }
}
void randomShape(PGraphics pg, float px, float py, float w) {
  pg.beginDraw();

  pg.pushMatrix();
  pg.pushStyle();
  pg.translate(px, py);
  pg.rotate(atan2(mouseX, mouseY));
  pg.scale(map(mouseX, 0, width, 0, 100));
  pg.noStroke();
  pg.fill(random(255), random(255), random(255));
  pg.rectMode(CENTER);
  pg.rect(0, 0, w, w);     
  pg.popStyle();
  pg.popMatrix();
  pg.endDraw();
}