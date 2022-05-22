//
//  ViewController.swift
//  SegueApp
//
//  Created by Fatih Filizol on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var name = ""

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblFirst: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSendToSecond(_ sender: Any) {
        name = txtName.text!
        performSegue(withIdentifier: "nameSegue", sender: nil)
    }
    override func viewWillAppear(_ animated: Bool) {
        txtName.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nameSegue"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.name = name
        }
    }
    
}

