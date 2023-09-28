 FBox creacionPeluche(){
  peluche = new FBox(90, 50);
  peluche.setPosition(random(100,700),543); // Posición inicial 
  //peluche.setNoStroke();
  peluche.setFriction(1);
  peluche.setDensity(100000);
  peluche.setGrabbable( false );
  peluche.setName("peluche");
    // Seleccionar una imagen aleatoria de los bloques
  PImage imagenAleatoria = imagenesBloque[int(random(imagenesBloque.length))];
  peluche.attachImage(imagenAleatoria);
  mundo.add(peluche); // Agrega la garra cerrada al mundo físico
  misPeluches.add(peluche);
  return peluche;
}

/* if ( frameCount % 5 == 0 && frameCount<100 ) {
    FCircle c = new FCircle( random(30, 80) );
    c.setPosition( random(100, width-100), 50 );   
    c.setGrabbable( false );
    mundo.add( c );
    misCirculos.add( c );
  }*/
