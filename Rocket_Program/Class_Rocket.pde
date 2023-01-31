class Rocket {
 
  
  //attributter
  int bangtime;
  float fuseframe, flighttime;
  color Rocketcolor;
  int diameter=10;
  float xpos, ypos, moveY;
  float o = 100;

  
  
  
  //konstrukter
  Rocket(int b, float f, int c, float h){
    bangtime = b*60;
    fuseframe = f*60;
    if(c==0) Rocketcolor = #0000ff;
    if(c==1) Rocketcolor = #00ff00;
    if(c==2) Rocketcolor = #ff0000;
    if(c==3) Rocketcolor = #ffff00;
    if(c>=4) Rocketcolor = #ff00ff;
    flighttime = h*100;
    
    
    
  }
  
  void drawRocket(){
    if(bangtime>=-50){
      fill(Rocketcolor);
      circle(xpos,ypos+moveY,diameter);
   
          if (moveY>-flighttime){
        fuseframe--;
        if(fuseframe<=0){
          moveY -= 2;
        }
      }
      else{
        if(bangtime>=0){
          diameter++;
          bangtime--;
        }
        else{
         fill(Rocketcolor,o);
         o -= 2;
         bangtime--; 
        }
      }
    }
  }

  void setPos(float x, float y){
   xpos=x;
   ypos=y;
  }
}
