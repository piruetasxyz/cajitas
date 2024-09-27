// lengueta.scad
// por @montoyamoraga
// para @piruetasxyz

module lengueta(posicion, dimensiones, centrado) {
    translate(posicion)
    cube(dimensiones, centrado);  
    
    
}