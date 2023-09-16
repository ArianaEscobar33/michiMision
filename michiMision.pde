import fisica.*;

FWorld mundo;

String pantalla;

void setup() {
  size(800, 600);
  pantalla="inicio";
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges();
  
<<<<<<< Updated upstream
  int numCajas = int(random(10, 21)); // Genera un número aleatorio entre 10 y 20

  for (int i = 0; i < numCajas; i++) {
    float x = random(width);
    float y = random(height);
    float w = random(50, 100); // Tamaño aleatorio de la caja
    float h = random(50, 100);
    color c = color(random(255), random(255), random(255)); // Color aleatorio
    float density = 1000;
    
    // Asegúrate de que la caja esté dentro de los límites de la pantalla
    x = constrain(x, 0, width - w);
    y = constrain(y, 0, height - h);
    
    FBox caja = crearCajaRaw(x, y, w, h, c, density);
    mundo.add(caja);
  }
=======
  
>>>>>>> Stashed changes
}

void draw() {
  if (pantalla == "inicio"){
    pantallaInicio();
  }else if (pantalla == "juego"){
  pantallaJuego();
}
}

void mousePressed(){
  if (pantalla=="inicio") {
    botonInicio();
  } 
}
