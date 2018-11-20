class camara{
  
  int x, y, t;
  
  camara(int x_, int y_, int t_){
    
    x = x_;
    y = y_;
    t = t_;
    
  }
  
  void instrucciones(){
    
    pushMatrix();
    rectMode(CENTER);
    fill(0,t);
    stroke(255,t);
    strokeWeight(3);
    rect(x, y, width, 120);
    textSize(30);
    fill(0,100,255);
    text("Presiona una de las siguientes teclas\nA   S    D    F", 50, 400);
    popMatrix();
    
  }
  
  void captura(){
    
    ocv.loadImage(camara);
    image(camara, 0, 0);
    
  }
  
  void keyPressed(){
    switch(key){
      
      case 'a':
      
        if(camara.available() == true){
          
          camara.read();
          camara.loadPixels();
          int contador = 0;
          
          for (int j = 0; j < pixelesY; j++) {
            
            for (int i = 0; i < pixelesX; i++) {
              
              Color[contador] = camara.get(i*pixel, j*pixel);
              contador++;
              
            }
          }
        }
        
        background(255);
        
        for (int j = 0; j < pixelesY; j++) {
          
          for (int i = 0; i < pixelesX; i++) {
            
            fill(Color[j*pixelesX + i]);
            rect(i*pixel, j*pixel, pixel, pixel);
            
          }
        }
        
      break;
      
      case 's':
      
        if(camara.available() == true){
          
          camara.read();
          camara.loadPixels();
          int contador = 0;
          
          for (int j = 0; j < pixelesY; j++) {
            
            for (int i = 0; i < pixelesX; i++) {
              
              Color[contador] = camara.get(i*pixel, j*pixel);
              contador++;
              
            }
          
          }
          
        }
        
        background(255);
        
        for (int j = 0; j < pixelesY; j++) {
          
          for (int i = 0; i < pixelesX; i++) {
            
            fill(Color[j*pixelesX + i]);
            ellipse(i*pixel, j*pixel, pixel, pixel);
            
          }
          
        }
        
      break;
      
      case 'd':
        if(camara.available() == true){
          
          camara.read();
          camara.loadPixels();
          int contador = 0;
          
          for (int j = 0; j < pixelesY; j++) {
            
            for (int i = 0; i < pixelesX; i++) {
              
              Color[contador] = camara.get(i*pixel, j*pixel);
              contador++;
              
            }
            
          }
          
        }
        
        background(255);
        
        for (int j = 0; j < pixelesY; j++) {
          
          for (int i = 0; i < pixelesX; i++) {
            
            fill(Color[j*pixelesX + i]);
            text("V",i*pixel, j*pixel); 
            
          }
          
        }
        
      break;
      
      case 'f':
      
        if(camara.available() == true){
          
          camara.read();
          camara.loadPixels();
          int contador = 0;
          
          for (int j = 0; j < pixelesY; j++) {
            
            for (int i = 0; i < pixelesX; i++) {
              
              Color[contador] = camara.get(i*pixel, j*pixel);
              contador++;
              
            }
            
          }
          
        }
        
        background(255);
        
        for (int j = 0; j < pixelesY; j++) {
          
          for (int i = 0; i < pixelesX; i++) {
            
            fill(Color[j*pixelesX + i]);
            text("|||",i*pixel, j*pixel);
            
          }
          
        }
        
      break;
      
    }
    
  }
  
}
