void pantallaInicio() {
  background(inicio);
  mundo.step();
  pinza.actualizar( mouseX, mouseY, mousePressed );
  pinza.dibujar();
  
}
