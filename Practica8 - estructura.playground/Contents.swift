
import UIKit

let cadenaComillas = "Bienvenido a esta materia de \"Desarrollo en Ios\" 2021"

print (cadenaComillas)

let cadenaSalto = "Bienvenido, \n a iOS"
print (cadenaSalto)

func saluda(_ nombre:String){
   print(nombre)
    
}

saluda("Lupita")

//arreglos
var titulosStarWars = [String]()
titulosStarWars.append("Una nueva esperanza")
print(titulosStarWars)

titulosStarWars.insert("El imperio contrataca", at: 1)
print(titulosStarWars)

titulosStarWars += ["3","4","5"]
print(titulosStarWars)

titulosStarWars.remove(at: 4)
print(titulosStarWars)

titulosStarWars.removeFirst()
print(titulosStarWars)

titulosStarWars.removeLast()
print(titulosStarWars)

titulosStarWars.removeAll()
print(titulosStarWars)

struct Canciones {
    let titulo:String
    let artista:String
    let duracion:Int
    var duracionMinutos:String{
        let minutos = duracion / 60
        let segundos = duracion % 60
        return "\(minutos) minutos,\(segundos) segundos"
    }
}

let cancion = Canciones(titulo:"El noa noa",artista:"Juan Gabriel",duracion:150)

print(cancion.duracionMinutos)

print (cancion)
print(cancion.artista)
let cancion2 = Canciones(titulo:"El triste",artista:"Jose Jose",duracion:100)
print(cancion.duracionMinutos)

print (cancion)
print(cancion.artista)



enum desayuno {
    case huevos
    case chilaquiles
    case  quesadillas

    func postre(_ decision:Bool) -> String {
        if(decision){
            return "Si"
        }
        else{
            return "No"
    }
    }

    }
let eleccion = desayuno.huevos
print (eleccion)
print (eleccion.postre(true))
print (desayuno.huevos)
