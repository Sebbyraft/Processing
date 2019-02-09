class Asteroid{
  private float x,y,size,velocity;
  
  Asteroid(){
    this.x = width;
    this.y = random(40,height);
    this.y = constrain(this.y,50+this.size/2,height);
    this.size = random(5,32);
    this.velocity = random(1,10);
  }
  
  void update(){
    this.x -= this.velocity;
  }
  
  void render(){
    pushMatrix();
    fill(255);
    rect(this.x,this.y,this.size,this.size);
    popMatrix();
  }

}
