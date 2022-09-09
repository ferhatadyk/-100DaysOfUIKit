//
//  Person.swift
//  Names to Faces
//
//  Created by Ferhat Adiyeke on 8.09.2022.
//

import UIKit

class Person: NSObject {
    
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }

}
