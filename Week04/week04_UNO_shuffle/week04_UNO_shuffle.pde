void setup(){
  size(400,400);
}
int [] cardN = new int [88];//卡的數字
int [] cardC = new int [88];//卡的顏色
color [] C={#FF5555,#FFAA00,#55AA55,#5555FF};
void draw(){
  background(255);
  for(int i=0;i<8;i++){
    for(int j=1;j<1;j++){
      cardN[i*11+j]=j;
      cardC[i*11+j]=C[i%4];
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
  
  textSize(9);
  textAlign(CENTER,CENTER);
  text (""+n,x+7,y+6);
  
  textSize(25);
  fill(c);
  text(""+n,x+15,y+19);
  
}
