ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>(); 
Player player;
int life;
int maxLife = 30;
int spawnRate = 1;
int score = 0;
float pTime;

void setup(){
  size(600,600);
  player = new Player();
  life = maxLife;
  pTime = millis()/1000;
}

void draw(){
  background(0,0,30);
  drawGui();
  player.render();
  player.update();
  asteroidsUpdate();
  collider();
  spawner();
  scoreUpdate();
  difficultyUpdate();
  checkVictory();
}

void checkVictory(){
  if(life <= 0){
    life = maxLife;
    score = 0;  
  }
}

void difficultyUpdate(){
  spawnRate = 1 + floor(score/10);
}

void asteroidsUpdate(){
  for(int i=0; i<asteroids.size(); i++){
    asteroids.get(i).render();
    asteroids.get(i).update();
    if(asteroids.get(i).x<0){
      asteroids.remove(i);
    }
  } 
}

void spawner(){
  if(asteroids.size() < spawnRate){
    asteroids.add(new Asteroid());
  }
}

void collider(){
  for(int i=0; i<asteroids.size(); i++){
    float d = dist(player.x,player.y,asteroids.get(i).x,asteroids.get(i).y); 
    if (d < ((player.size/2)+(asteroids.get(i).size/2))){
      life = life - 1;
      asteroids.remove(i);
    }
  }
}

void scoreUpdate(){
  if(millis()/1000>pTime){
    score ++;
    pTime = millis()/1000;
  }
}

void drawGui(){
  pushMatrix();
  fill(0,0,100);
  rect(0,0,width,50);
  popMatrix();
  
  pushMatrix();
  for(int i=0; i<maxLife; i++){
    fill(255,0,0);
    rect(30+10*i,20,10,10);
  }
  for(int i=0; i<life; i++){
    fill(0,255,0);
    rect(30+10*i,20,10,10);
  }
  popMatrix();
  
  pushMatrix();
  fill(255);
  text("Life",5,30);
  text("Score: " + score,width-250,30);
  text("Level: " + spawnRate,width-100,30);
  popMatrix();
}
