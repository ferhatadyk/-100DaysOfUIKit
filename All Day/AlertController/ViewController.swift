//
//  ViewController.swift
//  AlertController
//
//  Created by Ferhat Adiyeke on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func signUpClick(_ sender: Any) {
        
        
        
        if emailTextField.text == "" {
            // emailini girmemeşssin
            alertOlustur(titleGirdisi: "hata", messageGirdisi: "Email eksik")
            
        } else if passwordTextField.text == "" {
            
            
            
            // parolanı girmemişsin
    
            
            alertOlustur(titleGirdisi: "HAta", messageGirdisi:  "Parola eksik")
            
        }else if passwordTextField.text != password2TextField.text {
            
            
            
            // parollar uyumuşuyor
            
            alertOlustur(titleGirdisi: "hata", messageGirdisi: "Parolalar Uyuşmuyor")

            
            
        }else {
            
            //başarılı kayıt
            alertOlustur(titleGirdisi: "Tebrikler", messageGirdisi: "Kullanıcı Oluşturuldu")
            
           
        }
        
        
        
    
       
}


    
    func alertOlustur(titleGirdisi: String, messageGirdisi: String) {
        
        
        
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
   
    
    let okButton =  UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
        (UIAlertAction) in
        // ok buttonuna tıklanınca olacaklar kısmı
        print("okey button tıklandı")
    }
    
    
    uyariMesaji.addAction(okButton)
    
    
    self.present(uyariMesaji, animated: true, completion: nil)
        //başarılı kayıt
        
    }


}

    

