import fisica.*;
FWorld mundo;

String pantalla;
PImage inicio, fondo,bloque1;
FBox[] cajas;
int numCajas = 10; // Número de cajas iniciales
int cajasApiladas = 0; // Número de cajas apiladas
boolean ganaste = false;

void setup() {
  size(800, 600);
  inicio = loadImage("Inicio2.png");
  fondo = loadImage("fondo.png");
  bloque1=loadImage("bloque_prueba.png");
  pantalla = "inicio";
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(1);
  

  cajas = new FBox[numCajas]; // Inicializa el arreglo

  for (int i = 0; i < numCajas; i++) {
    float w = 80;
    float h = 60;
    color c = color(random(255), random(255), random(255));
    float density = 1000000;
   
    FBox caja = crearCajaRaw(w, h, c, density);
    cajas[i] = caja;
    mundo.add(caja);
  }
}

void draw() {
  if (pantalla == "inicio") {
    pantallaInicio();
  } else if (pantalla == "juego") {
    pantallaJuego();
  }
}

void mousePressed() {
  if (pantalla == "inicio") {
    botonInicio();
  } else if (pantalla == "juego" && cajasApiladas < 5) {
   
  }
}
