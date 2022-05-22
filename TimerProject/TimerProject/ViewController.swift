//
//  ViewController.swift
//  TimerProject
//
//  Created by Fatih Filizol on 21.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTime: UILabel!
    var timer = Timer()
    var counter = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        lblTime.text = "Time: \(counter)"

        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func timerFunc (){
        
        counter -= 1
        lblTime.text = "Time: \(counter)"
        
        if counter == 0 {
            timer.invalidate()
            lblTime.text = "Time is over"
        }
    }

    
    @IBAction func btnClicked(_ sender: Any) {
        print("Cliked")
    }
    
}

