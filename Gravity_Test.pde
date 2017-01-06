float x, y, gravity, velocity, inc;
boolean right = true;
void setup(){
  size(800,600);
  x = 10;
  y = height - 10;
  gravity = 0.1;
  velocity = 5;
  inc = 3;
}

void draw(){
  background(255);
  noStroke();
  fill(255,0,0);
  ellipse(x, y,20,20);
  y-=velocity;
  if(right){
    x+=inc;
  }else{
   x-=inc;
  }
  
  velocity-= gravity;
  
  if(x >= width - 10){
    right = !right;
    
    
  }
  
  if(x <= 10){
    right= !right;
    if(inc - 1 >=0){
      inc--;
    }
  }
  
  if(y >= height - 10){
    velocity=5;
  }
}