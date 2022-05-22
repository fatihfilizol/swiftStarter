//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Fatih Filizol on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtBirthday: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblBirthday: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            lblName.text = newName
        }
        
        if let newBirthday = storedBirthday as? String {
            lblBirthday.text = newBirthday
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSave(_ sender: Any) {
        
        UserDefaults.standard.set(txtName.text, forKey: "name")
        UserDefaults.standard.set(txtBirthday.text, forKey: "birthday")
        
        lblName.text=txtName.text
        lblBirthday.text=txtBirthday.text
    }
    
    @IBAction func btnDelete(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            lblName.text = "Name"
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            lblBirthday.text = "Birthday"
        }
        
    }
}

