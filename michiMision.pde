import fisica.*;

FWorld mundo;

void setup() {
  size(800, 600);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges();
  
  int numCajas = int(random(10, 21)); // Genera un número aleatorio entre 10 y 20

  for (int i = 0; i < numCajas; i++) {
    float x = random(width);
    float y = random(height);
    float w = random(50, 150); // Tamaño aleatorio de la caja
    float h = random(50, 150);
    color c = color(random(255), random(255), random(255)); // Color aleatorio
    float density = 10;
    
    // Asegúrate de que la caja esté dentro de los límites de la pantalla
    x = constrain(x, 0, width - w);
    y = constrain(y, 0, height - h);
    
    FBox caja = crearCajaRaw(x, y, w, h, c, density);
    mundo.add(caja);
  }
}

void draw() {
  background(255);
  mundo.step();
  mundo.draw();
}
