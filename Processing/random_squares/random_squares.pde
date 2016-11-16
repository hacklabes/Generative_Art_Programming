
float line = 0; 
float column = 0; 
float w = 0;

void setup(){
  size(800,800);
  background(255);
  //noLoop();
  w = width;
}


void draw(){
 randomShape(0,0, w);
 //w = w * exp(-0.5);
 w = w - 20;

 if(w <= 0.1){
   noLoop();   
   w = width;
 }
}

void keyPressed(){
  if(key == ' '){
    loop();
  }
}
void randomShape(float px, float py, float w){
  
  pushMatrix();
  pushStyle();
    translate(px+w/2,py+w/2);
    noStroke();
    fill(random(255),random(255),random(255));
    rectMode(CENTER);
    rect(0,0,w,w);     
  popStyle();
  popMatrix();
  
  
}