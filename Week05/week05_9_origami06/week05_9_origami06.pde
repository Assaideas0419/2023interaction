ArrayList<PVector>pt;
void setup(){
  size(400,400,P3D);
  pt=new ArrayList<PVector>();
  for(int i=0;i<20;i++){
    pt.add(new PVector(random(400),random(400)));
  }//假設畫面中,點好了20個頂點了
}
void draw(){
  background(255);
  for(PVector p:pt){
    ellipse(p.x,p.y,10,10);
  }
  if(ans!=null)ellipse(ans.x,ans.y,15,15);
}
PVector ans=null;
void mouseDragged(){
  if(mouseButton==CENTER && ans!=null){
    ans.x=mouseX;
    ans.y=mouseY;
  }
}
void mousePressed(){
  if(mouseButton==LEFT)pt.add(new PVector(mouseX,mouseY));
  else if(mouseButton==CENTER){
    for(PVector p:pt){//厲害的for迴圈(不能增刪裡面的東西)
      if(dist(p.x,p.y,mouseX,mouseY)<5){
        ans=p;
      }
    }
  }
  else if(mouseButton==RIGHT){//右鍵，要刪掉，用傳統的for迴圈
    for(int i=0;i<pt.size();i++){//要寫兩行，才等於厲害的一行
      PVector p=pt.get(i);
      if(dist(p.x,p.y,mouseX,mouseY)<5){//找到夠進的點
        pt.remove(i);//就把第i個點刪掉(刪掉的時候，會把大資料結構右邊的都左移一個)
      }
    }
  }
}
