class Ball{
  float x,y,gravity,velocit_y, force_y,force_x,velocit_x;
  boolean right;
  int radius;
  
  Ball(float x_, float y_){
    this.x = x_;
    this.y = y_;
    this.gravity = 0.1;
    this.velocit_y = 5;
    this.velocit_x = 5;
    this.force_y = 5;
    this.force_x = 3;
    this.right = true;
    this.radius = 10;
  }
  
  void update(){
    if(right){
      x+=velocit_x;
    }else{
      x-= velocit_x;
    }
    
    
    if(x >= (width - radius)){
      right = !right;
    }
    
    if(x <= radius){
      right = !right;
      velocit_x = force_x;
      if((force_x-1) >= 0){
        force_x--;
      } 
    }
    
    y-=velocit_y;
    velocit_y-= gravity;
    
    if(y >= (height - radius)){
      if((force_y-0.8) >= 0){
        force_y-=0.8;
      }
      
      if((force_x-0.01) >= 0){
        force_x-=0.01;
      }
      velocit_y = force_y;
      velocit_x = force_x;
    }
  }
  
  void show(){
    fill(255,0,0);
    noStroke();
    ellipse(x,y,2*radius,2*radius);
  }

}