// gerassic.scad
// por @montoyamoraga
// para @piruetasxyz

$fn=50;

// ancho en mm
ANCHO = 87.00;

// largo en mm
LARGO = 75.0;

// radio de esquinas en mm
RADIO_ESQUINAS = 3;

// definir tolerancia en porcentaje
TOLERANCIA = 0.01;

// definir tolerancia afuera en porcentaje
TOLERANCIA_AFUERA = 0.05;

// definir tolerancia adentro en porcentaje
TOLERANCIA_ADENTRO = 0.02;

// definir radio esquina en porcentaje
RADIO_ESQUINA = 0.01;

// https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations

module gerassic(altura) {

  difference() {

    // cubo exterior
    linear_extrude(
    height = altura,
    center = true,
    convexity = 1) {
      
      // hull of 2D figures
      color("magenta", 1.0)
      hull() {
        translate([
        -(1+ TOLERANCIA_AFUERA) * ANCHO/2,
        -(1+ TOLERANCIA_AFUERA) * LARGO/2
        ])
        circle(r = RADIO_ESQUINA * (1.1) * ANCHO);

        translate([
        -(1+ TOLERANCIA_AFUERA) * ANCHO/2,
        +(1 + TOLERANCIA_AFUERA) * LARGO/2])
        circle(r = RADIO_ESQUINA * (1.1) * ANCHO);

        translate([
        +(1+ TOLERANCIA_AFUERA)*ANCHO/2,
        -(1+ TOLERANCIA_AFUERA)*LARGO/2
        ])
        circle(r = RADIO_ESQUINA * (1.1) * ANCHO);

        translate([
        +(1+ TOLERANCIA_AFUERA)*ANCHO/2,
        +(1+ TOLERANCIA_AFUERA)*LARGO/2
        ])
        circle(r = RADIO_ESQUINA * (1.1) * ANCHO);
      }

    }

    // cubo interior que crea el hueco
    color("magenta", 3.0)
    translate([0, 0, 1.0])
    linear_extrude(
    height = altura,
    center = true,
    convexity = 1) {
      
      // hull of 2D figures

      
      hull() {
        translate([
        -(1+ TOLERANCIA_ADENTRO) * ANCHO/2,
        -(1+ TOLERANCIA_ADENTRO) * LARGO/2
        ])
        circle(r = RADIO_ESQUINA * ANCHO * TOLERANCIA_ADENTRO);

        translate([
        -(1+ TOLERANCIA_ADENTRO) * ANCHO/2,
        +(1 + TOLERANCIA_ADENTRO) * LARGO/2])
        circle(r = RADIO_ESQUINA*ANCHO * TOLERANCIA_ADENTRO);

        translate([
        +(1+ TOLERANCIA_ADENTRO)*ANCHO/2,
        -(1+ TOLERANCIA_ADENTRO)*LARGO/2
        ])
        circle(r = RADIO_ESQUINA*ANCHO * TOLERANCIA_ADENTRO);

        translate([
        +(1+ TOLERANCIA_ADENTRO)*ANCHO/2,
        +(1+ TOLERANCIA_ADENTRO)*LARGO/2
        ])
        circle(r = RADIO_ESQUINA*ANCHO * TOLERANCIA_ADENTRO);
      }
    }
  }
}


// usar modulo con cierta altura
gerassic(20);
