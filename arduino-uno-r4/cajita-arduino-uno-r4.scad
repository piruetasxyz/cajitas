// cajita-arduino-uno-r4.scad
// por @montoyamoraga
// para @piruetasxyz

// incluir archivos externos
include <arduino-uno-r4-wifi.scad>;
include <lengueta.scad>;

// definir tolerancia
TOLERANCIA = 0.1;

// definir modulo
module cajitaArduinoUnoR4() {
    
  mostrarArduino = true;
    arduinoUnoR4();
    lengueta(
        [0, 50, 0],
        [10, 1, 30],
        true);
    lengueta(
        [0, -50, 0],
        [10, 1, 30],
        true);
}


// usar modulo
cajitaArduinoUnoR4();