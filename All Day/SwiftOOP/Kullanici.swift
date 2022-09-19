//
//  Kullanici.swift
//  SwiftOOP
//
//  Created by Ferhat Adiyeke on 18.09.2022.
//

import Foundation


enum KullaniciTipi {
    case AdminKullanici
    case NormalKullanici
    case YetkisizKullanici
}


class Kullanici {
    
    var name = ""
    var age = 0
    var job = ""
    var tip = KullaniciTipi.NormalKullanici
    private var sacRengi : String = "Siyah"
    
    
    
    // initalizer
    
    
    init(name: String, age: Int, job: String, tip: KullaniciTipi) {
        print("init çağrıldı")
        
        self.name = name
        self.age = age
        self.job = job
        self.tip = tip
        
    }
    
    func ornekFonk() {
        print("fonk çağrıldı")
    }
    
    
    // Access Levels
    // open, public, internal, filepravite, private
    
    
    func sacRengiAl() -> String {
        
        return self.sacRengi

        
    }
    
}
