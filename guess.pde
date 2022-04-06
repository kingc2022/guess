/*
 Copyright (c) 2022 kingc, All rights reserved.
 License:
 Apache2 License
 */
PImage t0, t1, t2, t3, t4, t5, t6;
PFont font, fontLS;
int page = 0, sum = 0;
int [] tableNum = {
  1, 2, 4, 8, 16, 32
};
String [] tableNo = {
  "一", "二", "三", "四", "五", "六"
};
void setup() {
  size(900, 800);
  surface.setTitle("猜数字 v1.0");
  font = createFont("微软雅黑", 20, true);
  fontLS = createFont("隶书", 20, true);
  t0 = loadImage("table0.jpg");
  t1 = loadImage("table1.jpg");
  t2 = loadImage("table2.jpg");
  t3 = loadImage("table3.jpg");
  t4 = loadImage("table4.jpg");
  t5 = loadImage("table5.jpg");
  t6 = loadImage("table6.jpg");
  fill(0);
  textAlign(CENTER);
  textFont(font, 30);
}
void draw() {
  switch (page) {
  case 0:
    background(79, 129, 188);
    image(t0, 90, 100);
    text("请按空格键开始游戏...", 445, 720);
    break;
  case 1:
    key = ' ';
    background(79, 129, 188);
    image(t1, 90, 100);
    tishi(page);
    break;
  case 2:
    key = ' ';
    background(79, 129, 188);
    image(t2, 90, 100);
    tishi(page);
    break;
  case 3:
    key = ' ';
    background(79, 129, 188);
    image(t3, 90, 100);
    tishi(page);
    break;
  case 4:
    key = ' ';
    background(79, 129, 188);
    image(t4, 90, 100);
    tishi(page);
    break;
  case 5:
    key = ' ';
    background(79, 129, 188);
    image(t5, 90, 100);
    tishi(page);
    break;
  case 6:
    key = ' ';
    background(79, 129, 188);
    image(t6, 90, 100);
    tishi(page);
    break;
  case 7:
    background(79, 129, 188);
    fill(255, 255, 0);
    textSize(50);
    if (sum <= 0 || sum > 60) {
      text("你的数字不符合约定啊!", 460, 320);
    } else {
      text("你刚才想好的数字是" + str(sum) + "，对吗？", 460, 320);
    }
    fill(0);
    textSize(30);
    text("还猜吗？(Y/N)", 460, 520);
    break;
  default:
    if (key == 'Y' || key == 'y') {
      page = 0;
      sum = 0;
    } else {
      exit();
    }
  }
}

void keyPressed() {
  if (page == 0 && key == ' ') {
    page = 1;
  } else if (page > 0 && (key == 'Y' || key == 'y' || key == 'N' || key == 'n')) {
    if ((key == 'Y' || key == 'y') && page > 0 && page <= 6) { // 
      sum = sum + tableNum[page - 1];
    }
    page = page + 1;
  }
}
