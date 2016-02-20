//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var resultado : (Int, String)
        switch velocidad{
        case Velocidades.Apagado :
            resultado = (velocidad.rawValue, "Apagado")
            velocidad = Velocidades.VelocidadBaja
        case Velocidades.VelocidadBaja :
            resultado = (velocidad.rawValue, "VelocidadBaja")
            velocidad = Velocidades.VelocidadMedia
        case Velocidades.VelocidadMedia :
            resultado = (velocidad.rawValue, "VelocidadMedia")
            velocidad = Velocidades.VelocidadAlta
        case Velocidades.VelocidadAlta :
            resultado = (velocidad.rawValue, "VelocidadAlta")
            velocidad = Velocidades.VelocidadMedia
        }
        return resultado
    }
}

var auto = Auto()

for i in 1...20 {
    var velocidadActual = auto.cambioDeVelocidad()
    print("\(i). \(velocidadActual.actual), \(velocidadActual.velocidadEnCadena)")
}
