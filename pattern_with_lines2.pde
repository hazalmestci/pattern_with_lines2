float rotAngle = 45;
int w= 15;
int h= 300;
int x, y;
float R, G, B;

float speedX;
float speedY;

void setup(){
  size (900,900);
  
  speedX = 4;
  speedY = 5;
  x= width;
  y=height;
}

void draw(){
  fill(R, G, B);
    pushMatrix(); // remembers the translation / rotation beneath it.
  translate(100, 100);
  rotate(radians(rotAngle));
  rectMode(CENTER);
  rect(x,y,w,h);
  rotAngle+=45;
 
  popMatrix();

x+=speedX;
y+=speedY;

 if (x > width  || x < 0) {
    x -= speedX;
    speedX = -speedX;
  }
  
  if (y> height  || y < 0) {
   y -= speedY;
    speedY = -speedY;
    
    R = map(x, 0, width, 25 , 180);  
    B = map (y, 0, height, 111, 53);
    G= map (y, 0, height, 16 , 115);
 
 

}}