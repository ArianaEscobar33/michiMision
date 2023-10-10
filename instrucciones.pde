void pantallaInstrucciones() {
  background(instruccionesImg);
  mundo.step();
  pinza.actualizar( x, y, cierrePinza );
  pinza.dibujar();
}

void pantallamovie(){
  movie.play();
  //tint(255, 20);
  image(movie, 0, 0, width, height);
  }
void movieEvent(Movie m) {
  m.read();
}
