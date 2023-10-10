void pantallaInstrucciones() {
  background(instruccionesImg);
  mundo.step();
  pinza.actualizar( x, y, cierrePinza );
  pinza.dibujar();
}
