 FBox creacionPeluche(){
  peluche = new FBox(90, 50);
  peluche.setPosition(random(100,700),543); 
  peluche.setFriction(1);
  peluche.setDensity(100000);
  peluche.setGrabbable( false );
  peluche.setName("peluche");
    // Seleccionar una imagen aleatoria de los bloques
  PImage imagenAleatoria = imagenesBloque[int(random(imagenesBloque.length))];
  peluche.attachImage(imagenAleatoria);
  mundo.add(peluche);
  misPeluches.add(peluche);
  return peluche;
}
