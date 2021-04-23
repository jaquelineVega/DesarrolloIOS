//
//  ViewController.swift
//  AutoLayout-Constraint-3
//
//  Created by Daniella Garcia Freyre on 10/04/21.
//

import UIKit

class ViewController: UIViewController {
    var arribaIzquierda = UILabel()
        var arribaDerecha = UILabel()
        var abajoIzquierda = UILabel()
        var abajoDerecha = UILabel()
        
        var arregloConstrains = [NSLayoutConstraint]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            arribaIzquierda.backgroundColor = UIColor.blue
            arribaIzquierda.text = "ARRI"
            arribaIzquierda.textColor = UIColor.black
            arribaIzquierda.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(arribaIzquierda)
            let arribaIzquierdaTop = arribaIzquierda.topAnchor.constraint(equalTo:self.view.topAnchor, constant: 40)
            let arribaIzquierdaLeading = arribaIzquierda.leadingAnchor.constraint(equalTo:self.view.leadingAnchor, constant: 20)
            let arribaIzquierdaWidth = arribaIzquierda.widthAnchor.constraint(equalToConstant: 100)
            let arribaIzquierdaHeight = arribaIzquierda.heightAnchor.constraint(equalToConstant: 100)
            arregloConstrains.append(contentsOf: [arribaIzquierdaTop, arribaIzquierdaLeading, arribaIzquierdaWidth, arribaIzquierdaHeight])
            
            
            arribaDerecha.backgroundColor = UIColor.green
            arribaDerecha.text = "ARRD"
            arribaDerecha.textColor = UIColor.black
            arribaDerecha.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(arribaDerecha)
            let arribaDerechaTop = arribaDerecha.topAnchor.constraint(equalTo:self.view.topAnchor, constant: 40)
            let arribaDerechaTrailing = arribaDerecha.trailingAnchor.constraint(equalTo:self.view.trailingAnchor, constant: -20)
            let arribaDerechaWidth = arribaDerecha.widthAnchor.constraint(equalToConstant: 100)
            let arribaDerechaHeight = arribaDerecha.heightAnchor.constraint(equalToConstant: 100)
            arregloConstrains.append(contentsOf: [arribaDerechaTop, arribaDerechaTrailing, arribaDerechaWidth, arribaDerechaHeight])
            NSLayoutConstraint.activate(arregloConstrains)
            
            
            abajoIzquierda.backgroundColor = UIColor.orange
            abajoIzquierda.text = "ABAI"
            abajoIzquierda.textColor = UIColor.black
            abajoIzquierda.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(abajoIzquierda)
            let abajoIzquierdaBotoom = abajoIzquierda.bottomAnchor.constraint(equalTo:self.view.bottomAnchor, constant: -40)
            let abajoIzquierdaLeading = abajoIzquierda.leadingAnchor.constraint(equalTo:self.view.leadingAnchor, constant: 20)
            let abajoIzquierdaWidth = abajoIzquierda.widthAnchor.constraint(equalToConstant: 100)
            let abajoIzquierdaHeight = abajoIzquierda.heightAnchor.constraint(equalToConstant: 100)
            arregloConstrains.append(contentsOf: [abajoIzquierdaLeading, abajoIzquierdaBotoom, abajoIzquierdaWidth, abajoIzquierdaHeight])
            
            abajoDerecha.backgroundColor = UIColor.purple
            abajoDerecha.text = "ABAD"
            abajoDerecha.textColor = UIColor.black
            abajoDerecha.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(abajoDerecha)
            let abajoDerechaTop = abajoDerecha.bottomAnchor.constraint(equalTo:self.view.bottomAnchor, constant: -40)
            let abajoDerechaTrailing = abajoDerecha.trailingAnchor.constraint(equalTo:self.view.trailingAnchor, constant: -20)
            let abajoDerechaWidth = abajoDerecha.widthAnchor.constraint(equalToConstant: 100)
            let abajoDerechaHeight = abajoDerecha.heightAnchor.constraint(equalToConstant: 100)
            arregloConstrains.append(contentsOf: [abajoDerechaTrailing, abajoDerechaTop, abajoDerechaWidth, abajoDerechaHeight])
            
            NSLayoutConstraint.activate(arregloConstrains)
        }


    }
