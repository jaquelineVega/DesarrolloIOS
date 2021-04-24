//
//  ViewController.swift
//  VisorPDF
//
//  Created by MTWDM on 23/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        celda.textLabel?.text = listaTi[indexPath.row]
        celda.imageView!.image = UIImage(named: "iconopdf")
        return celda
    }
    func tableView(_ tableView: UITableView, canEditRowAt canEditPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let refreshAlert = UIAlertController(title: "¿Estas seguro?", message: "Se eliminra" + listaTi[indexPath.row], preferredStyle: .alert)
            refreshAlert.addAction(UIAlertAction(title: "Si eliminar", style: .default, handler: {
                (action: UIAlertAction!) in
                print(indexPath.row)
                self.listArc.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .middle)
            }))
            refreshAlert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: {
                (action: UIAlertAction!) in
                print("Se cancelo la eliminacion")
            }))
            present(refreshAlert, animated: true, completion: nil)
        }
    }
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Eliminar"
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "MostrarpdfSegue", sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MostrarpdfSegue" {
            let idPDF = sender as! Int
            let mostrarPDFVC:MostrarPDFViewController = segue.destination as! MostrarPDFViewController
            mostrarPDFVC.tituloPDF = listaTi[idPDF]
            mostrarPDFVC.nombrePDF = listArc[idPDF]
        }
    }
    var listaTi = ["Clean code" , "JavaScript","Maetring regular expressions",  "Tit4","Tit5","Tit6","Tit7","Tit8","Tit9","Tit10"]
    var listArc = ["pdf1", "pdf2","pdf3", "pdf1", "pdf2","pdf3","pedf1","pdf2","pdf3","pdf1"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

