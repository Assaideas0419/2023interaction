PImage img;
int [][]pos ={{93,490},{247,524},{178,524},{162,490},{152,456},{196,490},{230,489},{264,491},{323,457},{298,490},{332,490},{367,490},{315,525},{281,525},{356,456},{392,456},{84,456},{186,456},{127,490},{220,456},{289,457},{213,525},{118,456},{145,523},{255,456},{111,524}};
void setup(){
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);//用中心點，來畫四邊形
}
void draw(){
  background(#FFFFF2);//淡黃色，清背景
  image(img,0,600-266);
  fill(255,0,0,128);//半透明的紅色
  rect(mouseX,mouseY,27,30,5);
  fill(0,255,0,128);
  for(int i=0;i<26;i++){
    rect(pos[i][0],pos[i][1],28,30,5);
  }
}
void mousePressed(){
  println(mouseX,mouseY);//定位、印出mouse座標
}