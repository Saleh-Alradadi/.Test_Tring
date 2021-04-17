//
//  ftuTableViewCell.swift
//  Test_Tring
//
//  Created by Saleh Alrddadi on 14/04/2021.
//

import UIKit

class ftuTableViewCell: UITableViewCell {

    @IBOutlet weak var Imageftu: UIImageView!
    @IBOutlet weak var Nameftu: UILabel!
    @IBOutlet weak var Priceftu: UILabel!
    @IBOutlet weak var DisPlayftu: UILabel!
    @IBOutlet weak var btnftu: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func SetUpftu(photo : UIImage , Name : String , Price : Double , DisPlay : String){
        Imageftu.image = photo
        Nameftu.text = Name
        Priceftu.text = "\(Price)"
        DisPlayftu.text = DisPlay
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
}
