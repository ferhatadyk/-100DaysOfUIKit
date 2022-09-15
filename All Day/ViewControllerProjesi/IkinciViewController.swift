//
//  IkinciViewController.swift
//  ViewControllerProjesi
//
//  Created by Ferhat Adiyeke on 14.09.2022.
//

import UIKit

class IkinciViewController: UIViewController {

    @IBOutlet weak var ikincilabel: UILabel!
    
    @IBOutlet weak var bulunanSifre: UILabel!
    
    var verilenSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bulunanSifre.text = verilenSifre

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
