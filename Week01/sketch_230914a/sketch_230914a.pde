//互動模式 Interactive Mode (Active Mode)
void setup(){//設定
size(500,500);//視窗大小(寬,高);
background(255);//白色背景;
}
void draw(){//畫圖(每秒鐘畫60次)
  ellipse(mouseX,mouseY,8,8);
}
