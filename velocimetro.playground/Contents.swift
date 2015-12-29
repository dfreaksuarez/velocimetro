//: Velocimetro

enum Velocidades: Int {
    case Apagado=0, VelocidadBaja=20, VelocidadMedia=50, VelocidadAlta=120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades? = nil
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        var mensaje: String? = nil

        switch self.velocidad!{
            
        case Velocidades.Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            mensaje = "Velocidad Baja"
            return (self.velocidad!.rawValue, mensaje!)
            
        case Velocidades.VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            mensaje = "Velocidad Media"
            return (self.velocidad!.rawValue, mensaje!)
            
        case Velocidades.VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            mensaje = "Velocidad Alta"
            return (self.velocidad!.rawValue, mensaje!)
            
        case Velocidades.VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            mensaje = "Velocidad Media"
            return (self.velocidad!.rawValue, mensaje!)
            
        default:
            return (0, "Apagado")
        }
    
    }

}

var auto = Auto()
var indices = 1...20
var tupla = (auto.velocidad!.rawValue, "Apagado")

for i in indices {
    print("\(i). \(tupla.0), \(tupla.1)")
    tupla = auto.cambioDeVelocidad()
}


