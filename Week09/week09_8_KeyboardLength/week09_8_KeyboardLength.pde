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
    if(typing.charAt(0)-'a'==i)rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i])rect(pos[i][0],pos[i][1],28,30,5);
  }  
  textSize(50);
  fill(0);//黑色的字
  text(typing,50,50);//要打的字
  fill(255,0,0);//紅色
  text(typed + typing.charAt(ID),50,100);//現在要打的字是typing.charAt(0)
  fill(0);//再用黑色秀出已經打好的字
  text(typed,50,100);//已經打好的字

}
String typing = "printfprintfprintf";
String typed="";//一開始打了0個字
int ID=0;
boolean [] pressed = new boolean[26];//java的陣列宣告，都是0或是false
void keyPressed(){
  if(key>='a'&&key<='z'){
    if(key==typing.charAt(ID)){
      pressed[key-'a']=true;
      typed += key;
      ID ++;
    }
    else{
      background(255,0,0);
    }
  }
}
void keyReleased(){
  if(key>='a'&&key<='z')pressed[key-'a']=false;
}
