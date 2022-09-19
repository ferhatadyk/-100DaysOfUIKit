//
//  OzelKullanici.swift
//  SwiftOOP
//
//  Created by Ferhat Adiyeke on 18.09.2022.
//

import Foundation


class OzelKullanici: Kullanici {
    
    
    func yeniFonksiyon() {
        print("yeni fonksiyon çalıştırıldı") 
    }
    
    override func ornekFonk() {
        
        super.ornekFonk()
        print("üstüne yazar")
    }
}
