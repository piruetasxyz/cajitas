// business-card.scad
// por @montoyamoraga
// para @piruetasxyz

// ancho en mm
ANCHO = 85.60

// largo en mm
LARGO = 53.98

// radio de esquinas en mm
RADIO_ESQUINAS = 3;

// definir tolerancia
TOLERANCIA = 0.1;

// definir modulo
module carnet() {

   cube([ancho, largo, altura], center = true);
    
}

// usar modulo
carnet();