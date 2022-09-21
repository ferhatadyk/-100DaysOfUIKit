//
//  DetailViewController.swift
//  CityBookApp
//
//  Created by Ferhat Adiyeke on 18.09.2022.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    var selectCity : City?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        label1.text = selectCity?.name
        label2.text = selectCity?.area
        imageView.image = selectCity?.image
        
        
        

        
    }
    
}
