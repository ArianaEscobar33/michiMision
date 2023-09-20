//-------- //<>//
// Receptor de BBlobTracker

// creado por Matias Romero Costas

// Septiembre 2022
//--------

int PUERTO_OSC = 12345;

Receptor receptor;

PImage imagenGarraAbierta;
PImage imagenGarraMedia;
PImage imagenGarraCerrada;
PImage[] imagenesBloques = new PImage[6]; // Un arreglo para las imágenes de los bloques

boolean garraCerrada = false; // Variable para rastrear si la garra está cerrada o abierta

float xUltimoBloque;
float yUltimoBloque;

void setup() {

  size(800, 600);

  // Carga la imagen de la garra abierta
  imagenGarraAbierta = loadImage("garra_abierta.png");
  
  // Carga la imagen de la garra cerrada
  imagenGarraCerrada = loadImage("garra_cerrada.png");
  
  // Carga la imagen de la garra media
  imagenGarraMedia = loadImage("garra_media.png");
  
  // Carga las imágenes de los bloques en un bucle
  for (int i = 0; i < 6; i++) {
    imagenesBloques[i] = loadImage("bloque" + (i + 1) + ".png");
  }
  
  setupOSC(PUERTO_OSC);

  receptor = new Receptor();
}

 void draw() {
  background(255);  
  
  for (Blob b : blobs) {
    image(imagenGarraAbierta, b.centerX * width, b.centerY * height);
  }

  // Eventualmente, dibujar otros elementos y realizar otras operaciones aquí
  
   if (!garraCerrada) { // Verifica si la garra está abierta
    for (Blob b : blobs) {
      float xGarra = b.centerX * width - imagenGarraAbierta.width / 2;
      float yGarra = b.centerY * height - imagenGarraAbierta.height / 2;
      
      for (int i = 0; i < 6; i++) {
        PImage bloque = imagenesBloques[i];
        float xBloque = // Calcula la posición X del bloque
        float yBloque = // Calcula la posición Y del bloque
        
        if (xGarra < xBloque + bloque.width &&
            xGarra + imagenGarraAbierta.width > xBloque &&
            yGarra < yBloque + bloque.height &&
            yGarra + imagenGarraAbierta.height > yBloque) {
          garraCerrada = true; // Cambia el estado de la garra a cerrada
          break;
        }
      }
    }
  }
  
   if (garraCerrada) { // Verifica si la garra está cerrada
    // Dibuja la imagen de la garra cerrada en la posición del último bloque al que se unió
    image(imagenGarraCerrada, xUltimoBloque, yUltimoBloque);
  } else {
    for (Blob b : blobs) {
      float xGarra = b.centerX * width - imagenGarraAbierta.width / 2;
      float yGarra = b.centerY * height - imagenGarraAbierta.height / 2;
      
      for (int i = 0; i < 6; i++) {
        PImage bloque = imagenesBloques[i];
        float xBloque = // Calcula la posición X del bloque
        float yBloque = // Calcula la posición Y del bloque
        
        if (xGarra < xBloque + bloque.width &&
            xGarra + imagenGarraAbierta.width > xBloque &&
            yGarra < yBloque + bloque.height &&
            yGarra + imagenGarraAbierta.height > yBloque) {
          garraCerrada = true; // Cambia el estado de la garra a cerrada
          xUltimoBloque = xBloque; // Almacena la posición del último bloque al que se unió la garra
          yUltimoBloque = yBloque;
          break;
        }
      }
    }
  }
  
  

  //println("cantidad de blobs: " + receptor.blobs.size());
}

}
