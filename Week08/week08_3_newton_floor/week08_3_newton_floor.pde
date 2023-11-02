//碰撞偵測馬力歐和皮卡丘
//牛頓力學(1)靜者恆靜、動者恆動
//(2)f=m*a 位置、速度、加速度
void setup(){
  size(400,400);
}
float x=50,y=100,vx=2,vy=-10;
void draw(){
  x += vx;
  y += vy;
  vy += 0.98;//重力加速度
  if(y>350){//利用IF判斷有沒有碰到地板
    y=350;
    vy = -vy *0.7;
    vx = vx *0.8;    
  }
  ellipse(x,y,10,10);
}
