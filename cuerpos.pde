FBox crearCajaRaw(float w, float h, color c, float g) {
  float x = random(50, width - w - 50);
  float y = random(50, height - h - 50);
  FBox main = new FBox(w, h);
  main.setPosition(x, y);
  main.setFillColor(c);
  main.setFriction(1);
  float we = (w / 30);
  float he = (h / 30);
  main.setDensity((g / (we * he))*2);
  main.setNoStroke();
  //image(bloque1,10,10,80,60);
  main.attachImage(bloque1);
  return main;
}
