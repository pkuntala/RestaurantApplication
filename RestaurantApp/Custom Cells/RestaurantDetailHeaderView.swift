//
//  RestaurantDetailHeaderView.swift
//  RestaurantApp
//
//  Created by Preetika Kuntala  on 19/10/21.
//

import UIKit

class RestaurantDetailHeaderView: UIView {

    @IBOutlet var headerImgView: UIImageView!
    @IBOutlet var nameLbl:UILabel!
    @IBOutlet var typeLbl:UILabel!{
        didSet{
            typeLbl.layer.cornerRadius = 5.0
            typeLbl.layer.masksToBounds = true
            
        }
    }
    @IBOutlet var heartImgView:UIImageView!
    @IBOutlet var ratingImgView: UIImageView!
    
    
    

}
