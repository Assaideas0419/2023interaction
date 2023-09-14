//互動模式 Interactive Mode (Active Mode)
void setup(){//設定
size(500,500);//視窗大小(寬,高);
background(255);//白色背景;
}
void draw(){//畫圖(每秒鐘畫60次)
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }//畫線(滑鼠座標mouseX,mouseY,到之前滑鼠座標pmouseX,pmouseY);
}
void keyPressed(){//如果有按下keyboard的key
  if(key=='1')stroke(255,0,0);//如果按下數字1筆觸變紅
  if(key=='2')stroke(0,255,0);//如果按下數字2筆觸變綠
  if(key=='3')stroke(0,0,255);//如果按下數字3筆觸變藍
  if(key=='s'||key=='S')save("output.png");//按下S鍵就存檔output.pngs
}
