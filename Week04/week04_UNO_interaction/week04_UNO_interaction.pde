void setup(){
  size(400,400);
  myShuffle();
}
void myShuffle(){
  for(int i=0;i<8;i++){
    for(int j=0;j<11;j++){
      cardN[i*11+j]=j;
      cardC[i*11+j]=C[i%4];
    }
  }
  for(int i=0;i<1000;i++){
    int a = int(random(88)),b=int(random(88));
    int temp=cardN[a];
    cardN[a]=cardN[b];
    cardN[b]=temp;
    
    temp=cardC[a];
    cardC[a]=cardC[b];
    cardC[b]=temp;
  }
}
int [] cardN = new int [88];//卡的數字
int [] cardC = new int [88];//卡的
color [] C={#FF5555,#FFAA00,#55AA55,#5555FF};

void draw(){
  background(255);
  for(int i=0;i<8;i++){
    for(int j=1;j<10;j++){
      drawCard(j*32,i*50,cardC[i*11+j],cardN[i*11+j]);
    }
  }
}

void drawCard(int x,int y,color c,int n){
  stroke(128);//灰色線條
  fill(255);//白色線條
  rect(x,y,32,50,7);
  noStroke();
  fill(c);
  rect(x+3,y+3,32-5,50-5,4);
  
  pushMatrix();
  fill(255);
  translate(x+16,y+25);
  rotate(radians(45));
  ellipse(0,0,24,34);
  popMatrix();
  
  textAlign(CENTER,CENTER);
  textSize(9);
  text (""+n,x+7,y+6);
  
  textSize(25);
  fill(c);
  text(""+n,x+15,y+19);
  
}