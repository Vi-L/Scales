void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  scale(250, 250);
}
void scale(int x, int y) {
  fill(0, 255, 0);
  rect(x-25, y-25, 50, 50);
  bezier(x-25,y+25, x-20,y+100, x+20,y+100, x+25,y+25);
}

