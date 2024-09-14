import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup() {
  size(400,300); // set canvas size
  background(255); // set background to white
  arduino = new Arduino(this, Arduino.list()[3], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work

}
int x=0;
void draw() {
  int a = arduino.analogRead(5);
  int l = arduino.analogRead(6);
  int r = arduino.analogRead(1);
  System.out.println(a);
  if(l != 0) {
    x--;
  }
  if(r != 0) {
    x++;
  }
  if(a >= 200) {
    dayscene(x);
  } else if(a < 100) {
      nightscene(x);
  }
}
void dayscene(int x) {
  background(255); // prevent trails
  stroke(255, 233, 0); // set line color to yellow
  ellipse(275+x, 60, 80, 80); // sun
  stroke(95, 205, 228); // set line color to blue
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
  line(310,135, 305,165); // scar front
  line(305,165, 300,135); // scar back
}
void nightscene(int x) {
  background(0); // prevent trails
  stroke(201, 201, 201); // set line color to grey
  ellipse(275+x, 60, 80, 80); // moon
  ellipse(260+x, 40, 14, 14); // crater 1
  ellipse(300+x, 55, 16, 16); // crater 2
  ellipse(270+x, 77, 11, 11); // crater 3
  ellipse(290+x, 70, 5, 5); // crater 4
  stroke(255, 0, 0); // set line color to blue
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
  line(310,135, 305,165); // scar front
  line(305,165, 300,135); // scar back
}

