//
//  PlantViewController.swift
//  Test_Tring
//
//  Created by Saleh Alrddadi on 18/04/2021.
//

import UIKit

class PlantViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var PlantcollectionView: UICollectionView!
    
    var PlantsItem = [Plants]()
    override func viewDidLoad() {
        super.viewDidLoad()

        PlantcollectionView.delegate = self
        PlantcollectionView.dataSource = self
        
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_1")!, Price: 123))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_2")!, Price: 323))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_3")!, Price: 325))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_4")!, Price: 633))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_5")!, Price: 423))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_6")!, Price: 129))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_7")!, Price: 223))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_8")!, Price: 332))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_1")!, Price: 123))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_2")!, Price: 323))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_3")!, Price: 325))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_4")!, Price: 633))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_5")!, Price: 423))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_6")!, Price: 129))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_7")!, Price: 223))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_8")!, Price: 332))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_1")!, Price: 123))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_2")!, Price: 323))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_3")!, Price: 325))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_4")!, Price: 633))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_5")!, Price: 423))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_6")!, Price: 129))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_7")!, Price: 223))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_8")!, Price: 332))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_1")!, Price: 123))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_2")!, Price: 323))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_3")!, Price: 325))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_4")!, Price: 633))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_5")!, Price: 423))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_6")!, Price: 129))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_7")!, Price: 223))
        PlantsItem.append(Plants.init(Img: UIImage(named: "img_8")!, Price: 332))

        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PlantsItem.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlantCell", for: indexPath) as! PlantCollectionViewCell
        let data = PlantsItem[indexPath.row]
        cell.SetUpData(photo: data.Img, Price: data.Price)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.493 , height: self.view.frame.width * 0.45 )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }


}

struct Plants {
    let Img : UIImage
    let Price : Double
}
