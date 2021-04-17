//
//  HomeTableViewCell.swift
//  Test_Tring
//
//  Created by Saleh Alrddadi on 13/04/2021.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageF: UIImageView!
    @IBOutlet weak var NameF: UILabel!
    @IBOutlet weak var PriceF: UILabel!
    @IBOutlet weak var DisF: UILabel!
    @IBOutlet weak var BtnF: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setUp(Image: UIImage , Name: String , Price: Double , dis: String){
        ImageF.image = Image
        NameF.text = Name
        PriceF.text = "\(Price)"
        DisF.text = dis
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
