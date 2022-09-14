void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
  for (int y = height; y >= 0; y -= 60) {
    for (int x = width; x >= 0; x -= 50) {
      float randMult = (float)( Math.random() + 0.9); // min at 0.9
      if (randMult > 1.2) randMult = 1.2; // max at 1.2
      
      if (shift)
        drawScale(x + 30, y, randMult);
      else 
        drawScale(x, y, randMult);
    }
    shift = !shift;
  }
  //drawScale(250, 250, 1);
}
void drawScale(int x, int y, float sizeMult) {
  // main green scale
  stroke(2, 150, 39); // darker green
  strokeWeight(5*sizeMult);
  fill(2, 214, 39); // lighter green
  
  rect(x-25*sizeMult, y-25*sizeMult, 50*sizeMult, 50*sizeMult);
  bezier(x-25*sizeMult,y+20*sizeMult, x-20*sizeMult,y+80*sizeMult, x+20*sizeMult,y+80*sizeMult, x+25*sizeMult,y+20*sizeMult);
  
  
  // red and yellow spot in the middle
  stroke(255, 46, 71); // red
  strokeWeight(5*sizeMult);
  fill(255, 251, 50); // yellow
 
  pushMatrix();
  translate(x, y - 10*sizeMult);
  rotate(PI/4);
  rect(0, 0, 25*sizeMult, 25*sizeMult);
  popMatrix();
  
  
  noStroke();
}
