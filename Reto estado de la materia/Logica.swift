//
//  Logica.swift
//  Reto estado de la materia
//
//  Created by Elias José Rodriguez on 27/04/22.
//

import Foundation

class Logica{
    
    struct Molecula: Identifiable {
        let id: Int
        let name: String
        let solido: Int
        let gaseoso: Int
    }
    
    let moleculas = [
        Molecula(id: 1, name: "Agua", solido: 0, gaseoso: 100),
        Molecula(id: 2, name: "Metanol", solido: -92, gaseoso: -21),
        Molecula(id: 3, name: "Etanol", solido: -122, gaseoso: 20)
    ]
    
    func validarUnidadMedida(medida: Int) -> String{
        let unidad: String
        switch medida {
        case 1:
            unidad = "Grados Centigrados"
        case 2:
            unidad = "Grados Farenheit"
        case 3:
            unidad = "Grados kelvin"
        default:
            unidad = "error"
        }
        return unidad;
    }
    
    
    func validarMolecula(molecula:Int) -> String {
        switch molecula {
        case 1:
            return "Agua"
        case 2:
            return "Metanol"
        case 3:
            return "Etanol"
        default:
            return "error"
        }
    }
    
    func respuesta (temperatura: Int, unidadMedida: Int, elemento: Int) -> String {
        let medida = validarUnidadMedida(medida: unidadMedida)
        let molecula  = validarMolecula(molecula: elemento)
        var estado: String = ""
        
        for molecula in moleculas {
            if elemento == molecula.id{
                if temperatura <= molecula.solido {
                    estado = "solido"
                }else if temperatura >= molecula.gaseoso {
                    estado = "gaseoso"
                }else{
                    estado = "liquido"
                }
            }
        }
        return "El estado de la molecula de \(molecula) es \(estado) y su temperatura es de \(temperatura) \(medida)"
    }
}











//func respuesta (temperatura: Int, unidadMedida: Int, elemento: Int) -> String {
//    let mol = temp(temperatura: temperatura, unidadMedida: unidadMedida, elemento: elemento).1
//    var respuesta = ""
//
//    if elemento == mol{
//        respuesta = temp(temperatura: temperatura, unidadMedida: unidadMedida, elemento: elemento).0
//    }
//
//    return respuesta
//}
//
//func temp(temperatura: Int, unidadMedida: Int, elemento: Int) -> (String, Int) {
//    let medida = validarUnidadMedida(medida: unidadMedida)
//    let molecula  = validarMolecula(molecula: elemento)
//    var estado: String = ""
//
//    for molecula in moleculas {
//        if temperatura <= molecula.solido {
//            estado = "solido"
//        }else if temperatura >= molecula.gaseoso {
//            estado = "gaseoso"
//        }else{
//            estado = "liquido"
//        }
//    }
//    print("El estado de la molecula de \(molecula) es \(estado) y su temperatura es de \(temperatura) \(medida)")
//    return ("El estado de la molecula de \(molecula) es \(estado) y su temperatura es de \(temperatura) \(medida)", elemento)
//}
