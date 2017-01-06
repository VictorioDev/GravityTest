Ball b;

void setup(){
  size(800,600);
  b = new Ball(width/2,height/2);
}

void draw(){
  background(255);
  b.show();
  b.update();
}