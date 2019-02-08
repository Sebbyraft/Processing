ArrayList<Ball> b;
boolean stop = false;

void setup(){
  size(900,600);
  b = new ArrayList<Ball>();
}

void draw(){
  background(0);
  b.add(0, new Ball(random(400,500), height));
  for(int j = 0; j < b.size(); j++){
    b.get(j).render();
    if (stop == false){   
      b.get(j).update();
      if (b.get(j).y < 50 || b.get(j).x < 0 || b.get(j).x > width){
        b.remove(j);
      }
    }
  }
  
}

void keyPressed(){
  if (stop){
    stop = false;
  } else {
    stop = true;
  }
}
