//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Fatih Filizol on 20.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblimage: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var isFirst = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgView.isUserInteractionEnabled = true
        
        let gestureGecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imgView.addGestureRecognizer(gestureGecognizer)
        
    }
    
    @objc func changePic(){
        
        if isFirst == true {
            imgView.image = UIImage(named: "dagmanzara")
            lblimage.text = "Dağ Manzarası"
            isFirst = false
        }
        else {
            imgView.image = UIImage(named: "nehirmanzara")
            lblimage.text = "Nehir Manzarası"
            isFirst = true
        }
        
        
    }


}

