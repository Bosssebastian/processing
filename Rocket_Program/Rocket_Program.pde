ArrayList<Rocket> Rockets = new ArrayList<Rocket>();

void setup(){
  size(800,800);
}

void draw(){
  background(225);
  
  for(int i = 0; i < Rockets.size(); i++){
    Rockets.get(i).drawRocket();

  }
}
void mouseClicked(){
  Rockets.add(new Rocket(int(random(2,8)),random(2,5),int(random(0,5)),random(2,7)));
  Rockets.get(Rockets.size()-1).setPos(mouseX,mouseY);
}
