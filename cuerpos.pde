FBox crearCajaRaw(float w, float h, color c, float g) {
  float x = random(50, width - w - 50 - 700); // Límite de ancho de 700
  float y = random(50, height - h - 50 - 500); // Límite de alto de 500
  FBox main = new FBox(w, h);
  main.setPosition(x, y);
  main.setFillColor(c);
  main.setFriction(1.0);
  float we = (w / 30);
  float he = (h / 30);
  main.setDensity(g / (we * he));
  main.setNoStroke();
  return main;
}
