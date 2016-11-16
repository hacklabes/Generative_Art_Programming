// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Simple Recursion

void setup() {
  size(800,800);  
}

void draw() {
  background(255);
  drawCircle(width/2,height/2, 100); 
  noLoop();
}

// Very simple function that draws one circle 
// and recursively calls itself
void drawCircle(int x, int y, float r) {
  ellipse(x, y, r, r);
  // Exit condition, stop when radius is too small
  if(r > 2) {
    r = r * 0.75f;
    //r = r * 0.91;
    //r = r - 10;
    //r = r * exp(-0.8);
    // Call the function inside the function! (recursion!)
    drawCircle(x, y, r);	 
  }				
}