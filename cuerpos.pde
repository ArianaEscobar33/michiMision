FBox crearCajaRaw(float x, float y, float w, float h, color c, float g) {
  FBox main = new FBox(w, h);
  main.setPosition(x, y);
 // main.setVelocity(0, 0);
  main.setFillColor(c);
  main.setFriction(1.0);
  main.setRestitution(0.2);
  float we = (w / 20);
  float he = (h / 20);
  main.setDensity(g / (we * he));
  main.setNoStroke();
  return main;
}
