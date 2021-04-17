//
//  HomeViewController.swift
//  Test_Tring
//
//  Created by Saleh Alrddadi on 13/04/2021.
//

import UIKit

class HomeViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource {

    var fruu = [fru]()
    @IBOutlet weak var tableviewF: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableviewF.delegate = self
        tableviewF.dataSource = self
        

        fruu.append(fru.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        fruu.append(fru.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        fruu.append(fru.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        fruu.append(fru.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!", ima: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        fruu.append(fru.init(name: "pear", price: 2.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        fruu.append(fru.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        fruu.append(fru.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        fruu.append(fru.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        fruu.append(fru.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!", ima: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        fruu.append(fru.init(name: "pear", price: 2.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        fruu.append(fru.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        fruu.append(fru.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        fruu.append(fru.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        fruu.append(fru.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!", ima: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        fruu.append(fru.init(name: "pear", price: 2.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        fruu.append(fru.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        fruu.append(fru.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        fruu.append(fru.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        fruu.append(fru.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!", ima: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        fruu.append(fru.init(name: "pear", price: 2.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", ima: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruu.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeShop") as! HomeTableViewCell
        let data = fruu[indexPath.row]
        cell.setUp(Image: data.ima , Name: data.name, Price: data.price, dis: data.dis)
        return cell
    }



}


struct fru {
    let name : String
    let price : Double
    let dis : String
    let ima : UIImage
    
}
