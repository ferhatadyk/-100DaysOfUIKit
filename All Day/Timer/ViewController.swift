//
//  ViewController.swift
//  Timer
//
//  Created by Ferhat Adiyeke on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zamanLabel: UILabel!
    
    
    var timer = Timer()
    var kalanZaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

kalanZaman = 100
        zamanLabel.text = "Zaman: \(kalanZaman)"
    }

    
    @IBAction func baslatClick(_ sender: Any) {
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
        
        
    }
    
    
    @objc func timerFonksiyonu() {
        
        zamanLabel.text = "Zaman: \(kalanZaman)"

        kalanZaman = kalanZaman - 1
        
        if kalanZaman == 0 {
            zamanLabel.text = "Süre Bitti"
            timer.invalidate()
            kalanZaman = 0
        }
        
        
    }
    
}

