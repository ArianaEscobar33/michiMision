 FBox creacionPeluche1(){
  peluche = new FBox(90, 40);
  peluche.setPosition(random(100,700),543); 
  peluche.setFriction(1);
  peluche.setDensity(1000);
  peluche.setAngularDamping(5);
  peluche.setGrabbable( false );
  peluche.setName("peluche1");
  peluche.setVelocity(50,0);
    // Seleccionar una imagen aleatoria de los bloques
 // PImage imagenAleatoria = imagenesBloque[int(random(imagenesBloque.length))];
  //peluche.attachImage(imagenAleatoria);
  float imgRandom1 = random(1);
  if(imgRandom1 < 0.5){
  peluche.attachImage(bloque1);
  } else{
  peluche.attachImage(bloque2);
  }  
  mundo.add(peluche);
  misPeluches.add(peluche);
  return peluche;
}

 FBox creacionPeluche2(){
  peluche = new FBox(90, 40);
  peluche.setPosition(random(100,700),543); 
  peluche.setFriction(1);
  peluche.setDensity(1000);
  peluche.setAngularDamping(5);
  peluche.setGrabbable( false );
  peluche.setName("peluche2");
  peluche.setVelocity(50,0);
    // Seleccionar una imagen aleatoria de los bloques
 // PImage imagenAleatoria = imagenesBloque[int(random(imagenesBloque.length))];
  //peluche.attachImage(imagenAleatoria);
   float imgRandom2 = random(1);
  if(imgRandom2 < 0.5){
  peluche.attachImage(bloque3);
  } else{
  peluche.attachImage(bloque4);
  } 
  mundo.add(peluche);
  misPeluches.add(peluche);
  return peluche;
}

 FBox creacionPeluche3(){
  peluche = new FBox(90, 40);
  peluche.setPosition(random(100,700),543); 
  peluche.setFriction(1);
  peluche.setDensity(1000);
  peluche.setAngularDamping(5);
  peluche.setGrabbable( false );
  peluche.setName("peluche3");
  peluche.setVelocity(50,0);
    // Seleccionar una imagen aleatoria de los bloques
 // PImage imagenAleatoria = imagenesBloque[int(random(imagenesBloque.length))];
  //peluche.attachImage(imagenAleatoria);
   float imgRandom3 = random(1);
  if(imgRandom3 < 0.5){
  peluche.attachImage(bloque5);
  } else{
  peluche.attachImage(bloque6);
  } 
  //peluche.attachImage(bloque3);
  mundo.add(peluche);
  misPeluches.add(peluche);
  return peluche;
}

 FBox creacionPeluche4(){
  peluche = new FBox(90, 40);
  peluche.setPosition(random(100,700),543); 
  peluche.setFriction(1);
  peluche.setDensity(1000);
  peluche.setAngularDamping(5);
  peluche.setGrabbable( false );
  peluche.setName("peluche4");
  peluche.setVelocity(50,0);
    // Seleccionar una imagen aleatoria de los bloques
 // PImage imagenAleatoria = imagenesBloque[int(random(imagenesBloque.length))];
  //peluche.attachImage(imagenAleatoria);
   float imgRandom4 = random(1);
  if(imgRandom4 < 0.5){
  peluche.attachImage(bloque7);
  } else{
  peluche.attachImage(bloque8);
  } 
  mundo.add(peluche);
  misPeluches.add(peluche);
  return peluche;
}

 FBox creacionPeluche5(){
  peluche = new FBox(90, 40);
  peluche.setPosition(random(100,700),543); 
  peluche.setFriction(1);
  peluche.setDensity(1000);
  peluche.setAngularDamping(5);
  peluche.setGrabbable( false );
  peluche.setName("peluche5");
  peluche.setVelocity(50,0);
    // Seleccionar una imagen aleatoria de los bloques
 // PImage imagenAleatoria = imagenesBloque[int(random(imagenesBloque.length))];
  //peluche.attachImage(imagenAleatoria);
   float imgRandom5 = random(1);
  if(imgRandom5 < 0.5){
  peluche.attachImage(bloque9);
  } else{
  peluche.attachImage(bloque10);
  } 
  mundo.add(peluche);
  misPeluches.add(peluche);
  return peluche;
}

FBox creacionPeluche(){
  peluche = new FBox(90, 50);
  peluche.setPosition(random(100,700),543); // Posición inicial 
  peluche.setNoStroke();
  peluche.setFriction(1);
  peluche.setDensity(1000);
  peluche.setAngularDamping(5);
  peluche.setName("peluche");
    // Seleccionar una imagen aleatoria de los bloques
  PImage imagenAleatoria = imagenesBloque[int(random(imagenesBloque.length))];
  peluche.attachImage(imagenAleatoria);
  mundo.add(peluche); // Agrega la garra cerrada al mundo físico
  
  return peluche;
  
}
