//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Fatih Filizol on 23.04.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name = ""

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSecond: UILabel!
    override func viewDidLoad() {
        lblName.text = name
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
