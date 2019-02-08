SevenSegment s1;
SevenSegment s2;
SevenSegment s3;
SevenSegment s4;
int i = 0;

void setup(){
  size(1024,720);
  s1 = new SevenSegment(100,height/2,96);
  s2 = new SevenSegment(300,height/2,96);
  s3 = new SevenSegment(500,height/2,96);
  s4 = new SevenSegment(700,height/2,96);
  frameRate(1);
}

void draw(){
  background(0);
  s1.render();
  s1.num(i);
  s2.render();
  s2.num(i);
  s3.render();
  s3.num(i);
  s4.render();
  s4.num(i);
  if(i < 10)
    i++;
  else 
    i = 0;
}
