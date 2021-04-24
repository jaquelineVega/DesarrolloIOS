//
//  MostrarPDFViewController.swift
//  VisorPDF
//
//  Created by MTWDM on 23/04/21.
//

import UIKit
import WebKit

class MostrarPDFViewController: UIViewController, WKNavigationDelegate {
    var tituloPDF:String?
    var nombrePDF:String?
    var vistaWEB:WKWebView!
    
    override func loadView() {
     vistaWEB = WKWebView()
        vistaWEB.navigationDelegate = self
        view = vistaWEB
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        vistaWEB.allowsBackForwardNavigationGestures = true
        visualizaPDF()
    }
    func visualizaPDF(){
        let direccionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePDF!, ofType: "pdf", inDirectory: "libros")!)
        let datosPDF = try? Data(contentsOf: direccionPDF)
        
        vistaWEB.load(datosPDF!,mimeType:"application/pdf",characterEncodingName: "utf-8", baseURL: direccionPDF)
    }
    

   

}
