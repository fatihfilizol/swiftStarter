//
//  ViewController.swift
//  DarkMode
//
//  Created by Fatih Filizol on 9.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //overrideUserInterfaceStyle = .light // sadece bu viewcontroller görünümü için
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark{
            changeButton.tintColor = UIColor.cyan
            
        }
        else{
            changeButton.tintColor = UIColor.brown
        }
        
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark{
            changeButton.tintColor = UIColor.cyan
            
        }
        else{
            changeButton.tintColor = UIColor.brown
        }
    }

}

