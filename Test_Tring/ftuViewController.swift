import UIKit

class ftuViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{

    var ArrFTU = [fff]()
    @IBOutlet weak var tableViewftu: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewftu.delegate = self
        tableViewftu.dataSource = self

        
        ArrFTU.append(fff.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        ArrFTU.append(fff.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        ArrFTU.append(fff.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        ArrFTU.append(fff.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        ArrFTU.append(fff.init(name: "pear", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        ArrFTU.append(fff.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        ArrFTU.append(fff.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        ArrFTU.append(fff.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        ArrFTU.append(fff.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        ArrFTU.append(fff.init(name: "pear", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        ArrFTU.append(fff.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        ArrFTU.append(fff.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        ArrFTU.append(fff.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        ArrFTU.append(fff.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        ArrFTU.append(fff.init(name: "pear", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        ArrFTU.append(fff.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        ArrFTU.append(fff.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        ArrFTU.append(fff.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        ArrFTU.append(fff.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        ArrFTU.append(fff.init(name: "pear", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        ArrFTU.append(fff.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        ArrFTU.append(fff.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        ArrFTU.append(fff.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        ArrFTU.append(fff.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        ArrFTU.append(fff.init(name: "pear", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        ArrFTU.append(fff.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        ArrFTU.append(fff.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        ArrFTU.append(fff.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        ArrFTU.append(fff.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        ArrFTU.append(fff.init(name: "pear", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        ArrFTU.append(fff.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        ArrFTU.append(fff.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        ArrFTU.append(fff.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        ArrFTU.append(fff.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        ArrFTU.append(fff.init(name: "pear", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        ArrFTU.append(fff.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        ArrFTU.append(fff.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        ArrFTU.append(fff.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        ArrFTU.append(fff.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        ArrFTU.append(fff.init(name: "pear", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        ArrFTU.append(fff.init(name: "Banana", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "bananas-png-clipart-image-5a3b930ab7e9b2.7993135215138537067533")!))
        ArrFTU.append(fff.init(name: "grape", price: 4.50, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "kisspng-wine-nachos-grape-calorie-food-green-grapes-5a8fc557c3f1f8.9324778515193716078026")!))
        ArrFTU.append(fff.init(name: "kiwi", price: 2.70, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-kiwi-frut-png-clipart-5a3bb5b1a71812.0412767715138625776844")!))
        ArrFTU.append(fff.init(name: "oranges", price: 5.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "large-oranges-png-clipart-5a1c5d591eb703.6573302315118083451258")!))
        ArrFTU.append(fff.init(name: "pear", price: 7.20, dis: "!!!!!!!!!!!!!!!!!!!!!!", photo: UIImage(named: "pear-png-picture-5a1caa254a41a2.5679647515118280053042")!))
        
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrFTU.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShobF") as! ftuTableViewCell
        let dataftu = ArrFTU[indexPath.row]
        cell.SetUpftu(photo: dataftu.photo, Name: dataftu.name, Price: dataftu.price, DisPlay: dataftu.dis)
        cell.btnftu.tag = indexPath.row
        cell.btnftu.addTarget(self, action: #selector(adddd(sender:)), for: .touchUpInside)
        return cell
    }

    @objc
    func adddd(sender : UIButton){
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }
}



struct fff {
    let name : String
    let price : Double
    let dis : String
    let photo : UIImage
}
