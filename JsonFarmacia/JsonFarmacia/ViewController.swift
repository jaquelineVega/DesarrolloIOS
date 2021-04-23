//
//  ViewController.swift
//  JsonFarmacia
//
//  Created by MTWDM on 17/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    @IBOutlet var Tabla: UITableView!
    var medicamanetos = [Medicamento]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        obtienjson {
            print("Ok")
            self.Tabla.reloadData()
        }
        Tabla.delegate = self
        Tabla.dataSource = self
        
    }
    func obtienjson(completed:@escaping()->()){
        let url = URL(string:"https://grupohernandezalba.com/farmacia.json")
        
        URLSession.shared.dataTask(with: url!) {
            (data,response,error) in
            
            if error == nil{
                do {
                    self.medicamanetos = try JSONDecoder().decode([Medicamento].self, from: data!)
                    DispatchQueue.main.async {
                    completed()
                    }
                }
                catch{
                    print("Error al obtener el JSON")
                    print(error)
                }
            }
            
            
        }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return   medicamanetos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style: .default, reuseIdentifier: nil)
        celda.textLabel?.text = medicamanetos[indexPath.row].nombre + "(" + medicamanetos[indexPath.row].sustancia + ")"
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "DetalleSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetalleSegue" {
            
            let idSeleccionado = sender as! Int
            
            let detalleVC:DetalleViewController = segue.destination as! DetalleViewController
            detalleVC.nombreDetalle = medicamanetos[idSeleccionado].nombre
            detalleVC.dosisDetalle = medicamanetos[idSeleccionado].dosis
            detalleVC.sustanciaDetalle = medicamanetos[idSeleccionado].sustancia
            
            let ur = URL(string: "https://servidorgha4.com/delta/fotosdeproducto/" + medicamanetos[idSeleccionado].foto )
            
            let dato = try? Data(contentsOf: ur!)

            detalleVC.imagenDetalle = UIImage(data: dato!)!        }
    }

}


