import fisica.*;

FWorld mundo;
FBox caja1;
FBox caja2;

void setup() {
  size(800, 600);
  frameRate(60);
  Fisica.init(this);
  mundo = new FWorld();

 mundo.setEdges();

  caja1 = crearCaja(width/2, 90, 100, 100, color(255, 0, 0));

  caja2 = crearCaja(width/2, height-290, 100, 100, color(255, 0, 0));

  //caja1.setFriction(0.1);
  //caja2.setFriction(100);//perdida de energia en relacion al contacto con otros objetos

  mundo.add(caja1);
  mundo.add(caja2);
}

void draw() {
  background(255);
  mundo.step();
  mundo.draw();
}
