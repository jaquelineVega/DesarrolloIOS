//
//  Empleado.swift
//  ConexionesApp
//
//  Created by Daniella Garcia Freyre on 06/04/21.
//

import Foundation

class Empleado {
    var Nombe:String=""
    var Apellido:String=""
    var NumEmpleado:Int = 0
    var NumIMSS:Int = 0
    
    func mostrarNombreCompleto() -> String{
        return Nombe + " " + Apellido
    }
    func mostrarNumero() -> Int {
        return NumEmpleado
    }
}
