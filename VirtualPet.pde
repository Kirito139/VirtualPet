void setup() {
  size(400,300);
  background(255);
}
void draw() {
  stroke(95, 205, 228);
  noFill();
  line(0,110, 80,80); // neck
  line(80,80, 160,85); // top of head
  line(160,85, 195,130); // forehead
  line(170,115, 130,100); // eye
  line(80,75, 110,10); // back of ear
  line(110,10, 140,80); // front of ear
  line(195,130, 320,135); // upper snout
  line(320,135, 333,131); // snout to top of nose
  line(333,131, 338,131); // top of nose
  line(338,131, 335,170); // nosetip
  line(335,170, 325,165); // upper lip
  line(325,165, 120,170); // upper jaw
  line(323,175, 90,180); // lower jaw
  line(90,180, 0,210); // neck
  line(322,175, 329,167); // chin
  line(320,165, 315,180); // tooth1 front
  line(315,180, 310,165); // tooth1 back
  line(310,135, 305,168); // scar front
  line(305,168, 300,135); // scar back
 }
