//
//  ViewController.swift
//  Navigation-controller-2
//
//  Created by Ma Guadalupe Brizuela on 19/04/21.
//

import UIKit

class ViewController: UIViewController {
    let boton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
        boton.setTitle("Ir al segundo VC", for: .normal)
        boton.backgroundColor = .white
        boton.frame = CGRect(x:50, y:50, width: 200, height:50)
        boton.addTarget(self, action: #selector(tapSegundoVC), for: .touchUpInside)
        
        view.addSubview(boton)
    }
    @objc   private func tapSegundoVC(){
        let segundoVC = SegundoViewController()
        
        let navVC = UINavigationController(rootViewController: segundoVC)
        
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }

}
class SegundoViewController: UIViewController{
    let boton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        self.title = "Segundo VC"
        navigationItem.leftBarButtonItem=UIBarButtonItem(title: "<", style: .plain, target: self, action: #selector(regresa))
        
    }
    @objc private func regresa(){
        dismiss(animated: true, completion: nil)
    }
}
