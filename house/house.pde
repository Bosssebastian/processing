//lav et rum //<>// //<>// //<>//
Room[] house = new Room[6];


void setup() {
  size(800, 800);
  house[0]=new Room("Room", false, 100, 300);
  house[1]=new Room("Bedroom", false, 100, 400);
  house[2]=new Room("Bathroom", false, 200, 300);
  house[3]=new Room("Kitcen", false, 200, 400);
  house[4]=new Room("Livingroom", false, 300, 300);
  house[5]=new Room("Sexdungon", false, 300, 400);
}

void draw() {
  background(205);
  // tegn taget
  house[0].drawRoof();
  // tegn rum
  for (int i = 0; i < house.length; i++) {
    house[i].drawRoom();
  }
}

void mouseClicked() {
  //farve til rect
  fill(105);
  rect(80, 680, 300, 30);
  //ryd op
  fill(250);

  // find ud af om vi tænder eller slukker lyset
  for (int i = 0; i < house.length; i++) {
    if (house[i].isRoomClicked(mouseX, mouseY))
      if (house[i].light) {
        house[i].setLight(!house[i].light);
        text("Turning off the light in "+house[i].getRoomName(), 100, 700);
      } else {
        house[i].setLight(!house[i].light);
        text("Turning on the light in "+house[i].getRoomName(), 100, 700);
      }
  }
}
