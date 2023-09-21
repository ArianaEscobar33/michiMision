
import fisica.*;
FWorld mundo;

String pantalla;
PImage inicio, fondo;
PImage[] imagenesBloque = new PImage[8]; // Arreglo para almacenar las imágenes de los bloques
FBox[] cajas;
int numCajas = 10; // Número de cajas iniciales
int cajasApiladas = 0; // Número de cajas apiladas
boolean ganaste = false;

void setup() {
  size(800, 600);
  inicio = loadImage("Inicio2.png");
  fondo = loadImage("fondo.png");
  
  // Cargar las imágenes de los bloques
  for (int i = 0; i < 8; i++) {
    imagenesBloque[i] = loadImage("bloque" + (i+1) + ".png");
  }
  
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
    for (int i = 0; i < numCajas; i++) {
      for (int j = i + 1; j < numCajas; j++) {
        FBox cajaA = cajas[i];
        FBox cajaB = cajas[j];
        
        float distancia = dist(cajaA.getX(), cajaA.getY(), cajaB.getX(), cajaB.getY());
        float radioTotal = (cajaA.getWidth() + cajaB.getWidth()) / 2;
        
        if (distancia < radioTotal) {
          cajasApiladas++;
          break; // No es necesario verificar la misma caja con otras cajas
        }
      }
    }
  }
}
