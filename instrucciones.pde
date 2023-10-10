void pantallaInstrucciones() {
  background(instruccionesImg);
  mundo.step();
  pinza.actualizar( x, y, mousePressed );
  pinza.dibujar();
}
