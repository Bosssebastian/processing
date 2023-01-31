import controlP5.*;

Knob Red;
Knob Green;
Knob Blue;

float R, G, B;
ControlP5 cp5;

Textfield textfield;
Button button1;

float number = 0.0;

void setup() {
  size(400, 400);
  cp5 = new ControlP5(this);
  
  Red = cp5.addKnob("Red", 0, 255, 104, 25, height - 200, 100);
  Green = cp5.addKnob("Green", 0, 255, 104, 150, height - 200, 100);
  Blue = cp5.addKnob("Blue", 0, 255, 104, 275, height - 200, 100);
}

void draw() {

  
  background(Red.getValue(), Green.getValue(), Blue.getValue());
}
