//
//  ViewController.swift
//  ViewControllerProjesi
//
//  Created by Ferhat Adiyeke on 14.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birincilabel: UILabel!
    
    @IBOutlet weak var textField: UILabel!
    
    @IBOutlet weak var textF: UITextField!
    
    var alinanSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
print("view did load")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("did appear")
    }

    override func viewDidDisappear(_ animated: Bool) {
       print("died disappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textF.text = ""
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("will disappear")
    }

    
    @IBAction func kontrolEt(_ sender: Any) {
        
        alinanSifre = textF.text!
        
        
        if alinanSifre == "ferhat" {
            performSegue(withIdentifier: "toIkinciVc", sender: nil)
        } else {
            textField.text = "Şifren yanlış"
        }
        
       
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toIkinciVc" {
            let destinationVc =  segue.destination as! IkinciViewController
            destinationVc.verilenSifre = alinanSifre
        }
    }
}

