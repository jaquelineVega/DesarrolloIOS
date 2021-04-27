//
//  ViewController.swift
//  Vsita-WEB-1
//
//  Created by Ma Guadalupe Brizuela on 19/04/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate{

    var visitaWEB:WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let liga = URL(string:"https://grupohernandezalba.com")!
        visitaWEB.load(URLRequest(url: liga))
        visitaWEB.allowsBackForwardNavigationGestures = true
    }
    override func loadView(){
        visitaWEB = WKWebView()
        
        visitaWEB.navigationDelegate = self
        view = visitaWEB
    }

}

