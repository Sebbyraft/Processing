class Ball{
  private float x;
  private float y;
  private float velx;
  private float vely;
  private color c;
  private float size;
  
  Ball(float x,float y){
    this.x = x;
    this.y = y;
    this.size = 32;
    this.velx = random(-15,15);
    this.vely = -random(10,50);
    this.c = color(random(0,255),random(0,255),random(0,255),255);
  }
  
  void render(){
    fill(this.c);
    stroke(this.c);
    ellipse(x,y,this.size,this.size);
  }
  
  void update(){
    this.x += this.velx;
    this.y += this.vely;
  }
}
