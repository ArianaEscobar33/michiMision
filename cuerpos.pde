FBox crearCajaRaw(float x, float y, float w, float h, color c, float g, boolean e) {
  FBox main = new FBox(w,h);
  main.setPosition(x, y);
  main.setVelocity(0, 0);
  main.setFillColor(c);
  main.setStatic(e);
  float we = (w/20);
  float he = (h/20);
  main.setDensity(g/(we*he));
  main.setNoStroke();
  return main;
}

FBox crearCaja(float x, float y, float w, float h, color c) {
  return crearCajaRaw(x, y, w,h, c, 30, false);
}
