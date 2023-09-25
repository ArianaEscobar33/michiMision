PImage temporizador;

void pantallaJuego() {
  background(fondo);
  mundo.step();
  mundo.draw();
  
  temporizador= loadImage("temporizador.png");
  
  image(temporizador, 55, 20, 150, 100);
  
}
