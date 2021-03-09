import UIKit

var variableGlobal:Int = 50

func evaluar(){
    var variableLocal:String
    variableLocal = "Este es un texto de ejemplo"
    print(variableLocal)
}
evaluar()
class Heroe{
    var nombre:String=""
    var edad = 21
    var tipo = SuperPoder()
    
    func saludad()-> String{
        return "Sou un super heroe mi nombre es \(nombre)"
    }
    
    func muestraPoder()-> String{
        return "Soy \(nombre) y yo puedo \(tipo.accion)"
    }
    
}
class SuperPoder{
    var accion:String=""
}
var objectoHoroe:Heroe = Heroe()
print(objectoHoroe.edad)
objectoHoroe.nombre="Thor"
print(objectoHoroe.nombre)

var cadena = objectoHoroe.saludad

print(cadena)
objectoHoroe.tipo.accion = "Volar"
print(objectoHoroe.muestraPoder())

class Persona{
    var nombre:String = ""
    var apellido:String = ""
    var CURP:String = ""
    
    func muestraCurp()->String {
        return "CURP:  \(CURP)"
    }
}

var objPersona:Persona = Persona()
objPersona.nombre="Jaqueline"
objPersona.apellido="Vega"
objPersona.CURP="VEHJ940509MSPGRQ07"
print(objPersona.muestraCurp())


class Empleado:Persona {
    var numEmpleado:Int
    var puesto:String
    
    init(numEmpleado:Int, puesto:String){
        self.numEmpleado = numEmpleado
        self.puesto = puesto
    }
    func datosEmpleado()-> String{
        var datos:String
        datos = "Número de empleado " + String(numEmpleado) + "\n"
        datos += "Nombre completo " + nombre + " " + apellido + "\n"
        return datos
    }
}

var objEmpleado:Empleado = Empleado(numEmpleado: 1, puesto: "Mesera")
print(objEmpleado.datosEmpleado())
objEmpleado.nombre="Jorge"
objEmpleado.apellido="Shanchez"
objEmpleado.CURP="DFDFD"
print(objEmpleado.datosEmpleado())

//guard condicion false 

let EsMuejer:Bool = false
func revisaGenero(){
    guard EsMuejer else {
        print("Genero: Hombre")
        return
    }
}
revisaGenero()


