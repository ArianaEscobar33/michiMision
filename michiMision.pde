import fisica.*;

FWorld mundo;

String pantalla;
PImage inicio, fondo;

void setup() {
  size(800, 600);
  inicio = loadImage("Inicio2.png");
  fondo = loadImage("fondo.png");
  pantalla="inicio";
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges();
  int numCajas = int(random(10, 21)); // Genera un número aleatorio entre 10 y 20

  for (int i = 0; i < numCajas; i++) {
    float w = random(50, 70); // Tamaño aleatorio de la caja
    float h = random(50, 70);
    color c = color(random(255), random(255), random(255)); // Color aleatorio
    float density = 10000;
   
    FBox caja = crearCajaRaw(w, h, c, density);
    mundo.add(caja);
  }
  
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
