import UIKit

func miFuncion(nombre:String) -> String{
    return "Hola " + nombre
}

miFuncion(nombre:"Jaquelin")
print(miFuncion(nombre:"Obama"))

func saludo(nombre:String){
    print("hola " + nombre)
}

saludo(nombre: "Trump")

func otroSaludo(nombre:String, enElPoder:Bool)-> String{
    if enElPoder{
        return "si"
    }
    else {
        return "no"
    }
}
print(otroSaludo(nombre: "PEJOE", enElPoder: true))

func cuenta(apellido:String)-> Int{
    print(apellido)
    return  apellido.count
}

print(cuenta(apellido: "Vega"))

func compara(arrelgo:[Int])->(menor:Int,mayor:Int){
    if arrelgo[0]>arrelgo[1]{
        return(arrelgo[1],arrelgo[0])
    }
    else{
        return(arrelgo[0],arrelgo[1])
    }
}
print(compara(arrelgo:[5,8]))

var miVariable = compara(arrelgo: [15,9])
print(miVariable)
//Tuplas
print(miVariable.menor)
print(miVariable.mayor)

var serie = (temporada:1, nombre:"Gilmore Girls")
print(serie.nombre + "Temporada \(serie.temporada)")

func otroSaludosMas(Nombre:String, de cuidad:String)-> String{
    return "Hola \(Nombre) gracias por visitar la cuidad de \(cuidad)"
}
otroSaludosMas(Nombre:"Jaqueline", de: "SLP")

func otroSaludosMasv2(_ Nombre:String, de cuidad:String)-> String{
    return "Hola \(Nombre) gracias por visitar la cuidad de \(cuidad)"
}
