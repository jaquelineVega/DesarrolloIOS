//
//  ViewController.swift
//  GaleriaCollectionView
//
//  Created by MTWDM on 24/04/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagenes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath)
        as! FotosCollectionViewCell
        celda.foto.image = UIImage(named: imagenes[indexPath.row])
        return celda
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let pantalla = UIScreen.main.bounds
        return CGSize(width: pantalla.width, height: pantalla.height)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    let  imagenes:[String] = ["1","2","3","4","5"]

    @IBOutlet weak var fotos: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fotos.delegate = self
        fotos.dataSource = self
    }


}

