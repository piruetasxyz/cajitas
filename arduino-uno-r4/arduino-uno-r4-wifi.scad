// arduino-uno-r4.scad
// por @montoyamoraga
// para @piruetasxyz

// ancho y largo en mm
// arduino uno r4 wifi
ancho = 68.85;
largo = 53.34;
// TODO: revisar altura
altura = 15;

// definir modulo
module arduinoUnoR4() {
cube([ancho, largo, altura], center = true);
}