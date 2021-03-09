import UIKit

var cadena = "Hello, This is the way"
var otraCadena:String = ""
var nomrbe:String

print(cadena)
print(otraCadena)

var nombreOpcional:String?
nombreOpcional="Soy un opcional"
print("\(nombreOpcional!)")

var miEntero:Int?
miEntero=50
print(miEntero!)

let diametro:Optional<Int> = 45
print(diametro!)

var regaloNavidad:Int?

regaloNavidad = 10
if regaloNavidad != nil{
    var cantidadRegalos = regaloNavidad!
    print("Llegaron \(cantidadRegalos) regalos de Navidad - Happy")
}
else{
    print("No llegaron regalos de navidad - Sad")
}

var regalosNavidad:Int?
regalosNavidad = 5
if let cantidadRegalos2021 = regalosNavidad{
    print("Llegaron \(cantidadRegalos2021) regalos de navidad - Happy")
}
else{
    print("No llegaron regalos de navidad - Sad")
}

var SignoExlamacion:Character = "!"
SignoExlamacion = "G"
print(SignoExlamacion)

let Grupos:[Character] = ["h","o","l","a"]
let gruposCadena = String(Grupos)
print(gruposCadena)
print(Grupos[2])
