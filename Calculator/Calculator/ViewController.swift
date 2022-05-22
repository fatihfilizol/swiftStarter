//
//  ViewController.swift
//  Calculator
//
//  Created by Fatih Filizol on 20.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtNumber1: UITextField!
    @IBOutlet weak var txtNumber2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAddition(_ sender: Any) {
        if let number1 = Int((txtNumber1?.text)!) {
            if let number2 = Int((txtNumber2?.text)!) {
                lblResult.text = String(number1+number2)
            }
        }
    }
    
    
    @IBAction func btnMinus(_ sender: Any) {
        if let number1 = Int((txtNumber1?.text)!) {
            if let number2 = Int((txtNumber2?.text)!) {
                lblResult.text = String(number1-number2)
            }
        }
    }
    
    
    @IBAction func btnMultiplication(_ sender: Any) {
        if let number1 = Int((txtNumber1?.text)!){
            if let number2 = Int((txtNumber2?.text)!) {
                lblResult.text = String(number1*number2)
            }
        }
    }
    
    
    @IBAction func btnDivision(_ sender: Any) {
        if let number1 = Float((txtNumber1?.text)!) {
            if let number2 = Float((txtNumber2?.text)!) {
                lblResult.text = String(number1/number2)
            }
        }
    }
    
}

