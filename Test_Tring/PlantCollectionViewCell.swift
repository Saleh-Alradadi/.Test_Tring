//
//  PlantCollectionViewCell.swift
//  Test_Tring
//
//  Created by Saleh Alrddadi on 18/04/2021.
//

import UIKit

class PlantCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var img_Plant: UIImageView!
    @IBOutlet weak var Price_Plant: UILabel!
    
    func SetUpData(photo : UIImage , Price : Double){
        self.img_Plant.image = photo
        self.Price_Plant.text = "\(Price)"
    }
}
