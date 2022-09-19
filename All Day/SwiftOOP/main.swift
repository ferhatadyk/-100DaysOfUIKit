//
//  main.swift
//  SwiftOOP
//
//  Created by Ferhat Adiyeke on 17.09.2022.
//

import Foundation


let ferhat =  Kullanici(name: "Ferhat", age: 30, job: "software", tip: .AdminKullanici)


print(ferhat.job)

print(ferhat.tip)

ferhat.ornekFonk()


print(ferhat.sacRengiAl())

let zeynep = OzelKullanici(name: "Zenep", age: 1, job: "yok", tip: .AdminKullanici)


print(zeynep.job)

zeynep.ornekFonk()

zeynep.yeniFonksiyon()
