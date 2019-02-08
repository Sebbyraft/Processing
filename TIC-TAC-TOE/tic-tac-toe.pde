int bkColor = 0;
int sizeBox = 200;
boolean player1 = false;
boolean player2 = true;
int grid[][] = {{0,0,0},{0,0,0},{0,0,0}};
boolean m = false;
boolean victory1, victory2 = false;
boolean game = false;
PFont f;

void setup(){
  size(600,600);
  background(bkColor);
  f = createFont("Arial",16,true);
}

void draw(){
  if(game==true){
    drawGrid();
    checkVictory();
  } else if (game == false){
    drawMenu();
  }
}

void drawMenu(){
  //background(bkColor);
  textAlign(CENTER);
  textFont(f,36);
  fill(255,0,0);
  text("  Press any key   ",width/2,height/2 - 40);
  text("    to start      ",width/2,height/2);
}
  
void keyPressed(){
  if(game == true){
    game = false;
    
    for(int i = 0; i< 3; i++){
      for(int j = 0; j<3; j++){
        grid[i][j]=0;
      }
    }
    
    player1 = false;
    player2 = true;
    m = false;
    victory1 = false;
    victory2 = false;
    background(0);
    drawGrid();
  }
  if(game == false){
    background(0);
    game = true;
  }
    
}

void drawX(){
  if(player1 == true && m==false){
    fill(255,0,0);
    player1 = false;
    player2 = true;
    m = true;
  } else if (player2 == true && m==false){
    fill(0,255,0);
    player1 = true;
    player2 = false;
    m = true;
  }
  
  m = false;
  // Cell 0 1
  if(mouseX>=0 && mouseX<sizeBox){
    if(mouseY>=0 && mouseY<sizeBox){
      if(grid[0][0]==0){
        rect(0,0,sizeBox,sizeBox);
        if(player1 == true)
          grid[0][0]=1;
        else if(player2 == true)
          grid[0][0]=2;
      }
    }
  }
  // Cell 0 2
  if(mouseX>=sizeBox && mouseX<sizeBox*2){
    if(mouseY>=0 && mouseY<sizeBox){
      if(grid[0][1]==0){
        rect(sizeBox,0,sizeBox,sizeBox);
        if(player1 == true)
          grid[0][1]=1;
        else if(player2 == true)
          grid[0][1]=2;
      }
    }
  }    
  // Cell 0 3
  if(mouseX>=sizeBox*2 && mouseX<sizeBox*3){
    if(mouseY>=0 && mouseY<sizeBox){
      if(grid[0][2]==0){
        rect(sizeBox*2,0,sizeBox,sizeBox);
        if(player1 == true)
          grid[0][2]=1;
        else if(player2 == true)
          grid[0][2]=2;
      }
    }
  }
  
  // Cell 1 0
  if(mouseX>=0 && mouseX<sizeBox){
    if(mouseY>=sizeBox && mouseY<sizeBox*2){
      if(grid[1][0]==0){
        rect(0,sizeBox,sizeBox,sizeBox);
        if(player1 == true)
          grid[1][0]=1;
        else if(player2 == true)
          grid[1][0]=2;
      }
    }
  }
  
  // Cell 1 1
  if(mouseX>=sizeBox && mouseX<sizeBox*2){
    if(mouseY>=sizeBox && mouseY<sizeBox*2){
      if(grid[1][1]==0){
        rect(sizeBox,sizeBox,sizeBox,sizeBox);
        if(player1 == true)
          grid[1][1]=1;
        else if(player2 == true)
          grid[1][1]=2;
      }
    }
  }

  // Cell 1 2
  if(mouseX>=sizeBox*2 && mouseX<sizeBox*3){
    if(mouseY>=sizeBox && mouseY<sizeBox*2){
      if(grid[1][2]==0){
        rect(sizeBox*2,sizeBox,sizeBox,sizeBox);
        if(player1 == true)
          grid[1][2]=1;
        else if(player2 == true)
          grid[1][2]=2;
      }
    }
  }

  // Cell 2 0
  if(mouseX>=0 && mouseX<sizeBox){
    if(mouseY>=sizeBox*2 && mouseY<sizeBox*3){
      if(grid[2][0]==0){
        rect(0,sizeBox*2,sizeBox,sizeBox);
        if(player1 == true)
          grid[2][0]=1;
        else if(player2 == true)
          grid[2][0]=2;
      }
    }
  }
  
  // Cell 2 1
  if(mouseX>=sizeBox && mouseX<sizeBox*2){
    if(mouseY>=sizeBox*2 && mouseY<sizeBox*3){
      if(grid[2][1]==0){
        rect(sizeBox,sizeBox*2,sizeBox,sizeBox);
        if(player1 == true)
          grid[2][1]=1;
        else if(player2 == true)
          grid[2][1]=2;
      }
    }
  }

  // Cell 2 2
  if(mouseX>=sizeBox*2 && mouseX<sizeBox*3){
    if(mouseY>=sizeBox*2 && mouseY<sizeBox*3){
      if(grid[2][2]==0){
        rect(sizeBox*2,sizeBox*2,sizeBox,sizeBox);
        if(player1 == true)
          grid[2][2]=1;
        else if(player2 == true)
          grid[2][2]=2;
      }
    }
  }
  
}

void checkVictory(){
  //row 1
  if(grid[0][0] == 1 && grid[1][0] == 1 && grid[2][0] == 1){
    victory1 = true;
  }
  //row 2
  if(grid[0][1] == 1 && grid[1][1] == 1 && grid[2][1] == 1){
    victory1 = true;
  }
  //row 3
  if(grid[0][2] == 1 && grid[1][2] == 1 && grid[2][2] == 1){
    victory1 = true;
  }
  //col 1
  if(grid[0][0] == 1 && grid[0][1] == 1 && grid[0][2] == 1){
    victory1 = true;
  }
  //col 2
  if(grid[1][0] == 1 && grid[1][1] == 1 && grid[1][2] == 1){
    victory1 = true;
  }
  //col 3
  if(grid[2][0] == 1 && grid[2][1] == 1 && grid[2][2] == 1){
    victory1 = true;
  }
  //x 1
  if(grid[0][0] == 1 && grid[1][1] == 1 && grid[2][2] == 1){
    victory1 = true;
  }
  //x 2
  if(grid[0][2] == 1 && grid[1][1] == 1 && grid[2][0] == 1){
    victory1 = true;
  }  

  
  //row 1
  if(grid[0][0] == 2 && grid[1][0] == 2 && grid[2][0] == 2){
    victory2 = true;
  }
  //row 2
  if(grid[0][1] == 2 && grid[1][1] == 2 && grid[2][1] == 2){
    victory2 = true;
  }
  //row 3
  if(grid[0][2] == 2 && grid[1][2] == 2 && grid[2][2] == 2){
    victory2 = true;
  }
  //col 1
  if(grid[0][0] == 2 && grid[0][1] == 2 && grid[0][2] == 2){
    victory2 = true;
  }
  //col 2
  if(grid[1][0] == 2 && grid[1][1] == 2 && grid[1][2] == 2){
    victory2 = true;
  }
  //col 3
  if(grid[2][0] == 2 && grid[2][1] == 2 && grid[2][2] == 2){
    victory2 = true;
  }
  //x 1
  if(grid[0][0] == 2 && grid[1][1] == 2 && grid[2][2] == 2){
    victory2 = true;
  }
  //x 2
  if(grid[0][2] == 2 && grid[1][1] == 2 && grid[2][0] == 2){
    victory2 = true;
  }  
  
  if(victory1 == true && victory2 == false){
     background(0,255,0);
  } else if(victory2 == true && victory1 == false){
     background(255,0,0);
  }
}

void drawGrid(){
    //fill(bkColor);
    noFill();
    stroke(255);
    for(int i = 0; i < 3; i++){
      for(int j = 0; j < 3; j++){
        stroke(255);
        rect(i*sizeBox,j*sizeBox,sizeBox,sizeBox);
      }
  }
}

void mousePressed(){
  if(game == true){
    drawX();
  }
}
