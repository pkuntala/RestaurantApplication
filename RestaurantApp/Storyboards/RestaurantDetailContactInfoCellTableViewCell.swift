//
//  RestaurantDetailContactInfoCellTableViewCell.swift
//  RestaurantApp
//
//  Created by Preetika Kuntala  on 19/10/21.
//

import UIKit

class RestaurantDetailContactInfoCell: UITableViewCell {

    @IBOutlet weak var iconImgview: UIImageView!
    @IBOutlet weak var shortTextLbl: UILabel! {
        didSet{
            shortTextLbl.numberOfLines = 0
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
