float x,y = 0;
int radius = 200;
float angle = 0;
float speed = 0.1;

void setup(){
  size(600,600);
}

void draw(){
  translate(width/2, height/2);
  ellipseMode(CENTER);
  background(0);
  fill(255);
  ellipse(x,y,32,32);
  
  x = radius*cos(angle);
  y = radius*sin(angle);
  
  angle = angle + speed;
  speed = map(mouseX,0,width, 0, 5);
  
  text("Move mouse to change angular velocity",-width/2 + 5,-height/2 + 20);
  text("Speed: "+ speed,-width/2 + 5,-height/2 + 35);
}
