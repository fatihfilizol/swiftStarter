//
//  ViewController.swift
//  AlertProject
//
//  Created by Fatih Filizol on 20.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPasswordAgain: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func alertCustom(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let btnOK = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(btnOK)
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func btnSignUp(_ sender: Any) {
        
        let userName = txtUserName.text
        let password = txtPassword.text
        let passwordAgain = txtPasswordAgain.text
        
        
        if userName == nil || userName == "" {
            alertCustom(title:"Error",message:"User Name not Found")
        }
        if password == nil || password == "" {
            alertCustom(title:"Error",message:"Password not Found")
        }
        if passwordAgain != password {
            alertCustom(title:"Error", message:"Password do not match")
        }
        else{
            alertCustom(title:"Success",message:"Sign Up is Successed")
        }
    }
    
}

