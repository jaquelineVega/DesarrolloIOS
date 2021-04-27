//
//  ViewController.swift
//  Vista-WEB-2
//
//  Created by Ma Guadalupe Brizuela on 19/04/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate    {

    var visitaWEB:WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Abrir", style: .plain, target: self, action: #selector(tapAbrir))
        
        let liga = URL(string:"https://grupohernandezalba.com")!
        visitaWEB.load(URLRequest(url: liga))
        visitaWEB.allowsBackForwardNavigationGestures = true
    }
    @objc func tapAbrir(){
        let alertaC = UIAlertController(title: "Abrir web", message: nil, preferredStyle: .actionSheet)
        alertaC.addAction(UIAlertAction(title: "Apple.com", style: .default, handler: abrirPagin))
    }
    func abrirPagin (action: UIAlertAction){
        let liga = URL(string: "htpps://" + action.title!)!
        visitaWEB.load(URLRequest(url: liga))
    }
    override func loadView(){
        visitaWEB = WKWebView()
        
        visitaWEB.navigationDelegate = self
        view = visitaWEB
    }
}


