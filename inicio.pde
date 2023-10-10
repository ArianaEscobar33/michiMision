void pantallaInicio() {
  background(inicio);
  mundo.step();
  pinza.actualizar( x, y, mousePressed );
  pinza.dibujar();
  
}
