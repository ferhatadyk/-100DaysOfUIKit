//
//  DetailsViewController.swift
//  TableBasicApp
//
//  Created by Ferhat Adiyeke on 17.09.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var selectHeroName = ""
    var selectHeroImage = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: selectHeroImage)
        label.text = selectHeroName

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
