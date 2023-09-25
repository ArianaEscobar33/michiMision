import ddf.minim.*;

Minim minim;
AudioPlayer fondoMusica;
AudioPlayer perderSound;
AudioPlayer relojSound;
AudioPlayer relojSound2;  // Agregamos un nuevo AudioPlayer para Reloj2.mp3

boolean juegoComenzado = false;
int tiempoInicial = 20;
int tiempoRestante = tiempoInicial;
boolean jugar = false;
int tiempoAnterior;

import fisica.*;
FWorld mundo;

String pantalla;
PImage inicio, fondo, pantallaperder;
PImage[] imagenesBloque = new PImage[8];
FBox[] cajas;
int numCajas = 10;
int cajasApiladas = 0;
boolean ganaste = false;

void setup() {
  size(800, 600);
  inicio = loadImage("Inicio2.png");
  fondo = loadImage("fondo.png");
  pantallaperder = loadImage("pantalla_perder.png");
  
  for (int i = 0; i < 8; i++) {
    imagenesBloque[i] = loadImage("bloque" + (i+1) + ".png");
  }
  
  pantalla = "inicio";
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(1);
  
  cajas = new FBox[numCajas];

  for (int i = 0; i < numCajas; i++) {
    float w = 80;
    float h = 60;
    color c = color(random(255), random(255), random(255));
    float density = 1000000;
   
    FBox caja = crearCajaRaw(w, h, c, density);
    cajas[i] = caja;
    mundo.add(caja);
  }
  
  // Inicializa la biblioteca Minim
  minim = new Minim(this);
  
  // Carga el archivo de sonido "perder.mp3"
  perderSound = minim.loadFile("perder.mp3");
  
  // Carga el archivo de música de fondo "Juego.mp3"
  fondoMusica = minim.loadFile("Juego.mp3");
  fondoMusica.loop();
  fondoMusica.setGain(0.5); // Ajusta el volumen de la música de fondo
  
  // Carga el archivo de sonido "Reloj.mp3"
  relojSound = minim.loadFile("Reloj.mp3");
  
  // Carga el archivo de sonido "Reloj2.mp3"
  relojSound2 = minim.loadFile("Reloj2.mp3");

}

void draw() {
  background(255); // Dibuja la pantalla

  if (pantalla == "inicio") {
    pantallaInicio();
  } else if (pantalla == "juego") {
    if (!juegoComenzado) {
      jugar = true;
      tiempoAnterior = millis();
      juegoComenzado = true;
    }

    if (millis() - tiempoAnterior >= 1000) {
      tiempoAnterior = millis();
      if (tiempoRestante > 0) {
        tiempoRestante--;
        
        if (tiempoRestante <= 10) {
          relojSound.play();
          
          // Agregamos esta condición para el sonido Reloj2.mp3
          if (tiempoRestante <= 3 && !relojSound2.isPlaying()) {
            relojSound2.play();
          }
        }
      } else {
        jugar = false;
        pantallaPerder();
        perderSound.play();
        fondoMusica.pause(); // Pausa la música de fondo
      }
    }

    pantallaJuego();
    
    fill(255);
    String tiempoFormateado = nf(tiempoRestante / 60, 2) + ":" + nf(tiempoRestante % 60, 2);
    textSize(25);
    text(tiempoFormateado, 120, 86);
  } else if (pantalla == "perder") {
    image(pantallaperder, 0, 0, width, height);
    perderSound.play();
    fondoMusica.pause(); // Pausa la música de fondo cuando se muestra la pantalla de perder
    relojSound.pause(); // Pausa el sonido de reloj cuando se muestra la pantalla de perder
  }
}

void mousePressed() {
  if (pantalla == "inicio") {
    botonInicio();
  } else if (pantalla == "juego" && cajasApiladas < 5) {
    jugar = true;
    tiempoAnterior = millis();

    for (int i = 0; i < numCajas; i++) {
      for (int j = i + 1; j < numCajas; j++) {
        FBox cajaA = cajas[i];
        FBox cajaB = cajas[j];

        float distancia = dist(cajaA.getX(), cajaA.getY(), cajaB.getX(), cajaB.getY());
        float radioTotal = (cajaA.getWidth() + cajaB.getWidth()) / 2;

        if (distancia < radioTotal) {
          cajasApiladas++;
          break;
        }
      }
    }
  }
}

void pantallaPerder() {
  pantalla = "perder";
  // Agrega aquí cualquier lógica adicional relacionada con la pantalla de perder
}

void stop() {
  perderSound.close();
  fondoMusica.close();
  relojSound.close();
  relojSound2.close();  // Cerramos el sonido Reloj2.mp3
  minim.stop();
  super.stop();
}
