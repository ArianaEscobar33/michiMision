void pantallaInicio(){
  background(200);
  fill(255,0,0);
  textSize(20);
  text("michiMision",350,200);
  rect(350,300,100,50);
}

void botonInicio(){
 if ((mouseX>350)&&(mouseX<350+100)&&(mouseY>300)&&(mouseY<300+50)) {
    pantalla="juego";
    
  }
}