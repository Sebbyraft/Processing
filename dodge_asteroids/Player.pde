class Player{
  private float x,y,size;
  
  Player(){
    this.x =25;
    this.y = height/2;
    this.size = 32;
  }
  
  void update(){
    this.x = mouseX;
    this.y = mouseY;
    this.y = constrain(this.y,50+size/2,height);
  }
  
  void render(){
    fill(255,100,100);
    ellipseMode(CENTER);
    ellipse(this.x,this.y,this.size,this.size);
  }

}
