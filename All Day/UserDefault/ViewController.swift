//
//  ViewController.swift
//  UserDefault
//
//  Created by Ferhat Adiyeke on 14.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var notTextField: UITextField!
    
    
    @IBOutlet weak var zamanTextField: UITextField!
    
    
    @IBOutlet weak var notLabel: UILabel!
    
    @IBOutlet weak var zamanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        
        // as --> casting
        
        if let gelenNot = kaydedilenNot as? String {
            notLabel.text = "Yapılacak iş: \(gelenNot)"
        }
        
        if let gelenZaman = kaydedilenZaman as? String {
            zamanLabel.text = "Yapılacak Zaman \(gelenZaman)"
        }
        
        
        
    }

    @IBAction func kaydetTiklandi(_ sender: Any) {
        
        
        UserDefaults.standard.set(notTextField.text!, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text!, forKey: "zaman")
        
        notLabel.text = "yapılacak iş: \(notTextField.text!)"
        
        zamanLabel.text = "Yapılacak zaman: \(zamanTextField.text!)"
    }
    
    
    @IBAction func silTiklandi(_ sender: Any) {
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZamamn = UserDefaults.standard.object(forKey: "zaman")
        
        
        // -> boş string
        
        if (kaydedilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            notLabel.text = "Yapılacak İş: "
        }
        
        if (kaydedilenZamamn as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "zaman")
            zamanLabel.text = "Yapılacak Zaman: "
        }
        
        
    }
    

}

