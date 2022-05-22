//
//  ViewController.swift
//  ilkUygulamam
//
//  Created by Fatih Filizol on 10.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHead: UIImageView!
    @IBOutlet weak var lblAbout: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnChange(_ sender: Any) {
        lblAbout.text="Günbatımı İstanbul Manzarası";
        imgHead.image = UIImage(named: "istanbulmanzara")
    }
}

