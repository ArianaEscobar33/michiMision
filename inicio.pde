void pantallaInicio() {
  background(inicio);
   mundo.step();
  //mundo.draw();
   //pinza.revisarPeluches( misPeluches, mundo );
//actualizo la pinza
  pinza.actualizar( mouseX, mouseY, mousePressed );
  pinza.dibujar();
 // noFill();
  //noStroke();
  //rect(550, 190, 155, 150);  // Cambio de parámetros
  
  
}

/*void botonInicio() {
  if ((mouseX > 550) && (mouseX < 550 + 155) && (mouseY > 190) && (mouseY < 190 + 150)) {  // Cambio de parámetros
    pantalla = "juego";
  }
}*/
