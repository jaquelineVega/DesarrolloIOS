
import UIKit
var  cadenas = "Hola " + "Mundo"

let  nombreEmpleado:String = "Luke"
let apellidoEmpleado:String = "Skywalter"

let titulo:String = "Jedi"

var datosEmpleado:String = ""

datosEmpleado = nombreEmpleado + " " + apellidoEmpleado + " " + titulo

print(datosEmpleado)

datosEmpleado = ""

datosEmpleado += nombreEmpleado + " "
datosEmpleado += apellidoEmpleado + " "
datosEmpleado += titulo

print(datosEmpleado)

let articulo:String = """
Esta cadena es
una multilinea
"""

print(articulo)

let 😋 = "sonrisa 🤓"
print (😋)

let  strUnicode = "\u{1F31F}"
print (strUnicode)

let 🌟 = "Estrella"

print ("Soy una " + 🌟)


let comida = "🍎"
let bebida = "🥤"
let postre = "🍧"

var comanda = comida + bebida + postre
print ("Mesa 1: " + comanda)
