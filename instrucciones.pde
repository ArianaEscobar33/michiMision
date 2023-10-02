void pantallaInstrucciones() {
  background(instruccionesImg);
  mundo.step();
  pinza.actualizar( mouseX, mouseY, mousePressed );
  pinza.dibujar();
}
