import gab.opencv.*;
import processing.video.*;
import java.awt.*;

import ddf.minim.*;

Minim minim;
Minim gestor;
AudioPlayer musica_fondo;

Capture camara;
OpenCV ocv;
camara cam;

int pixelesX, pixelesY;
int pixel = 10;
color Color[];



void setup(){
  
  size(640, 480);
  camara = new Capture(this, 640, 480);
  ocv = new OpenCV(this, 640, 480);
  cam = new camara(width/2, 420, 75);
  camara.start();
  pixelesX = width/pixel;
  pixelesY = height/pixel;
  Color = new color[pixelesX * pixelesY];
  
  gestor = new Minim(this);
  musica_fondo = gestor.loadFile("Baroque Virus.mp3");
  musica_fondo.setGain(-5);
  musica_fondo.loop();
}

 

void draw(){
  
  cam.captura();
  cam.keyPressed();
  cam.instrucciones();
}

void captureEvent(Capture c) {
  
  c.read();
  
}
