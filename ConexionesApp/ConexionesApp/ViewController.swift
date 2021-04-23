//
//  ViewController.swift
//  ConexionesApp
//
//  Created by Daniella Garcia Freyre on 06/04/21.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var NombreEmpleado: UILabel!
    
    var  objetoEmpleado:Empleado?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NombreEmpleado.text = "Departamento de sistemas"
    }

    @IBAction func AltaEm(_ sender: UIButton) {
        objetoEmpleado = Empleado()
        objetoEmpleado?.Nombe="Juan"
        objetoEmpleado?.Apellido="Hernandez"
        objetoEmpleado?.NumEmpleado=1
        objetoEmpleado?.NumIMSS=1234
        
        print("Alta empleado")
    }
    
    
    @IBAction func ConsultaEmpl(_ sender: UIButton) {
        print("Consulta")
        print("\(objetoEmpleado!.Nombe)")
        print("\(objetoEmpleado!.mostrarNombreCompleto())")
        print("\(objetoEmpleado!.mostrarNumero())")
    }
    @IBAction func VerIm(_ sender: UIButton) {
        print("Ver IMSS")
        print("\(objetoEmpleado!.NumIMSS)")
    }
    
    @IBAction func Baja(_ sender: UIButton) {
        print("Baja")
    }
    
}

