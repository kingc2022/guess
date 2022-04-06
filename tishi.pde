void tishi(int tbn) {
  textFont(fontLS, 70);
  text("表格", 415, 80);
  text(tableNo[tbn-1], 520, 80);
  textFont(font, 35);
  text("这个表格里有你想好的数字吗？", 455, 720);
  text("有按“Y”或“y”键，没有按“N”或“n”键。", 460, 770);
}
