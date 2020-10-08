Die Bob;
int sum = 0;
int totalTotal;

void setup(){
  size(500, 600);
  textAlign(CENTER,CENTER);
  noLoop();
}

void draw(){
   sum = 0;
   background(255);
   for(int i = 0; i < 400; i += 120){
    for (int j = 0; j < 400; j += 120){
      Bob = new Die(20 + (j + 1), 10 + (i + 1));
      Bob.roll();
      Bob.show();
    }
   }
  textSize(50);
  text("Dots this roll:"+ sum, 200, 490);
  text("Total:"+ totalTotal, 120, 550);
}
  
void mousePressed(){
  redraw();
}

class Die{
  int FX, FY;
  
  Die(int x, int y){
    FX = x;
    FY = y;
  }
  
  int num;
  
  void roll(){
    num = (int)(Math.random()*6 + 1);
    sum += num;
    totalTotal += num;
    }

  void show(){
    fill(255);
    rect(FX, FY, 100, 100);
    
    
    fill(70);
    strokeWeight(5);
    stroke(70);
    int dot = 24;
    if (num == 1){
      ellipse(FX + 50, FY + 50, dot, dot);
    }
    else if (num == 2){
      ellipse(FX + 20, FY + 20, dot, dot);
      ellipse(FX + 80, FY + 80, dot, dot);
    }
    else if (num == 3){
      ellipse(FX + 20, FY + 20, dot, dot);
      ellipse(FX + 50, FY + 50, dot, dot);
      ellipse(FX + 80, FY + 80, dot, dot);
    }
    else if (num == 4){
      ellipse(FX + 20, FY + 20, dot, dot);
      ellipse(FX + 20, FY + 80, dot, dot);
      ellipse(FX + 80, FY + 20, dot, dot);
      ellipse(FX + 80, FY + 80, dot, dot);
    }
    else if (num == 5){
      ellipse(FX + 20, FY + 20, dot, dot);
      ellipse(FX + 20, FY + 80, dot, dot);
      ellipse(FX + 80, FY + 20, dot, dot);
      ellipse(FX + 80, FY + 80, dot, dot);
      ellipse(FX + 50, FY + 50, dot, dot);
    }
    else if (num == 6){
      ellipse(FX + 20, FY + 20, dot, dot);
      ellipse(FX + 20, FY + 80, dot, dot);
      ellipse(FX + 20, FY + 50, dot, dot);
      ellipse(FX + 80, FY + 50, dot, dot);
      ellipse(FX + 80, FY + 20, dot, dot);
      ellipse(FX + 80, FY + 80, dot, dot);
    }
  }
}
