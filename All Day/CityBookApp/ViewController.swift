//
//  ViewController.swift
//  CityBookApp
//
//  Created by Ferhat Adiyeke on 18.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var cityDizi = [City]()
    var kullaniciSecimi : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableView.delegate = self 
        tableView.dataSource = self
        
        
        
        
        //city
        
        
        let istanbul = City(name: "İstanbul", area: "Marmara", image: UIImage(named: "istanbul")!)
        let izmir = City(name: "İzmir", area: "Ege", image: UIImage(named: "izmir")!)
        let ankara = City(name: "Ankara", area: "Anadolu", image: UIImage(named: "anitkabir")!)
        let diyarbakir = City(name: "Diyarbakır", area: "Doğu", image: UIImage(named: "diyarbakir")!)
        let antalya = City(name: "Antalya", area: "Akdeniz", image: UIImage(named: "antalya")!)

        
        cityDizi = [istanbul,izmir,ankara,diyarbakir,antalya]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityDizi.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityDizi[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = cityDizi[indexPath.row ]
        performSegue(withIdentifier:  "toDetail", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.selectCity = kullaniciSecimi
        }
    }

}

