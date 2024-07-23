//
//  RatingViewController.swift
//  RestaurantApp
//
//  Created by Preetika Kuntala on 21/10/21.
//

import UIKit

class RatingViewController: UIViewController {
    @IBOutlet var bgImgView: UIImageView!
    
    @IBOutlet var rateButtons: [UIButton]!
    
    var restaurant = Restaurant()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        bgImgView.image = UIImage(named: restaurant.image)
        //Apply the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        bgImgView.addSubview(blurEffectView)
        
        
        let slideRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        let scaleupTransform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
        let slideScaleTransform = scaleupTransform.concatenating(slideRightTransform)
        
        
        for rateButton in rateButtons{
            rateButton.transform = slideScaleTransform
            rateButton.alpha = 0
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("In viewWillAppear()")
        
        UIView.animate(withDuration: 0.4, delay: 0.1,usingSpringWithDamping: 0.2,initialSpringVelocity: 0.1,options: [], animations: {self.rateButtons[0].alpha=1.0
            self.rateButtons[0].transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: 0.4, delay: 0.3,usingSpringWithDamping: 0.2,initialSpringVelocity: 0.1,options: [], animations: {self.rateButtons[1].alpha=1.0
            self.rateButtons[1].transform = .identity
            
        }, completion: nil)
        
        
        UIView.animate(withDuration: 0.4, delay: 0.5,usingSpringWithDamping: 0.2,initialSpringVelocity: 0.1, options: [], animations: {self.rateButtons[2].alpha=1.0
            self.rateButtons[2].transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: 0.4, delay: 0.7,usingSpringWithDamping: 0.2,initialSpringVelocity: 0.1, options: [], animations: {self.rateButtons[3].alpha=1.0
            self.rateButtons[3].transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: 0.4, delay: 0.9,usingSpringWithDamping: 0.2,initialSpringVelocity: 0.1,options: [], animations: {self.rateButtons[4].alpha=1.0
            self.rateButtons[4].transform = .identity
        }, completion: nil)
        /*UIView.animate(withDuration: 2.0){
            self.rateButtons[0].alpha = 1.0
            self.rateButtons[1].alpha = 1.0
            self.rateButtons[2].alpha = 1.0
            self.rateButtons[3].alpha = 1.0
            self.rateButtons[4].alpha = 1.0
            
            
        }*/
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
