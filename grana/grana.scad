// grana.scad
// por @montoyamoraga
// para @piruetasxyz

$fn=200;

// ancho en mm
ANCHO = 50;

// largo en mm
LARGO = 40;

// altura en mm
ALTURA = 100;

// radio de esquinas en mm
RADIO_ESQUINAS = 3;

// definir tolerancia en porcentaje
TOLERANCIA = 0.01;

// definir tolerancia afuera en porcentaje
TOLERANCIA_AFUERA = 0.05;

// definir tolerancia adentro en porcentaje
TOLERANCIA_ADENTRO = 0.01;

// definir radio esquina en porcentaje
RADIO_ESQUINA = 0.01;

// https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations

module grana(x, y, z) {

 difference() {
    linear_extrude(height = 50, center = true, twist = 20) {
    translate([-10, 5, 0])
    hull() {
      translate([
      -(1 + TOLERANCIA_AFUERA) * x/2,
      -(1 + TOLERANCIA_AFUERA) * y/2
      ])
      circle(r = 1);
      
      translate([
      -(1 + TOLERANCIA_AFUERA) * x/2,
      +(1 + TOLERANCIA_AFUERA) * y/2
      ])
      circle(r = 1);
      
      translate([
      +(1 + TOLERANCIA_AFUERA) * x/2,
      -(1 + TOLERANCIA_AFUERA) * y/2
      ])
      circle(r = 1);
      
      // translate([
      // +(1 + TOLERANCIA_AFUERA) * x/2,
      // +(1 + TOLERANCIA_AFUERA) * y/2
      // ])
      // circle(r = 1);
      }
    }
     linear_extrude(height = 50*1.1, center = true, twist = 20) {
    translate([-10, 5, 0])
    hull() {
      translate([
      -(1 + TOLERANCIA_ADENTRO) * x/2,
      -(1 + TOLERANCIA_ADENTRO) * y/2
      ])
      circle(r = 0.5);
      
      translate([
      -(1 + TOLERANCIA_ADENTRO) * x/2,
      +(1 + TOLERANCIA_ADENTRO) * y/2
      ])
      circle(r = 0.5);
      
      translate([
      +(1 + TOLERANCIA_ADENTRO) * x/2,
      -(1 + TOLERANCIA_ADENTRO) * y/2
      ])
      circle(r = 0.5);
      
      translate([
      +(1 + TOLERANCIA_ADENTRO) * x/2,
      +(1 + TOLERANCIA_ADENTRO) * y/2
      ])
      circle(r = 0.5);
      }
    }
}


}



// usar modulo con cierta altura
grana(ANCHO, LARGO, ALTURA);
