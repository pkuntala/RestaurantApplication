//
//  RestaurantCell.swift
//  RestaurantApp
//
//  Created by Preetika Kuntala  on 14/10/21.
//

import UIKit

class RestaurantCell: UITableViewCell {
    
    @IBOutlet var nameLbl:UILabel!
    @IBOutlet var locationLbl:UILabel!
    @IBOutlet var typeLbl:UILabel!
    //@IBOutlet var heartTick:UIImageView!
    @IBOutlet var thumbnailImgView:UIImageView! {
        didSet{
            thumbnailImgView.layer.cornerRadius=thumbnailImgView.bounds.width / 2
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
