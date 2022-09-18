//
//  ViewController.swift
//  TableBasicApp
//
//  Created by Ferhat Adiyeke on 16.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,  UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var heroName = [String]()
    
    var heroPicture = [String]()
    
    
    var selectName = ""
    var selectPicture = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        heroName.append("Batman")
        heroName.append("Superman")
        heroName.append("Iron Man")
        heroName.append("Spiderman")
        heroName.append("Captain America")
        
        
        
        heroPicture.append("batman")
        heroPicture.append("superman")
        heroPicture.append("ironman")
        heroPicture.append("spiderman")
        heroPicture.append("captain")



        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroName.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = heroName[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            heroName.remove(at: indexPath.row)
            heroPicture.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)

        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         selectName = heroName[indexPath.row]
         selectPicture = heroPicture[indexPath.row]

        performSegue(withIdentifier: "toDetailVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectHeroName = selectName
            destinationVC.selectHeroImage = selectPicture
        }
    }
}

