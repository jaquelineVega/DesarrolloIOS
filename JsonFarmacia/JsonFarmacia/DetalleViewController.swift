//
//  DetalleViewController.swift
//  JsonFarmacia
//
//  Created by MTWDM on 17/04/21.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet var sustancia: UILabel!
    @IBOutlet var dosis: UILabel!
    @IBOutlet var nombre: UILabel!
    @IBOutlet var Imagen: UIImageView!
    
    var nombreDetalle:String?
    var imagenDetalle = UIImage()
    var dosisDetalle:String?
    var sustanciaDetalle:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nombre.text = nombreDetalle
        dosis.text = dosisDetalle
        sustancia.text = sustanciaDetalle
        Imagen.image = imagenDetalle
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
