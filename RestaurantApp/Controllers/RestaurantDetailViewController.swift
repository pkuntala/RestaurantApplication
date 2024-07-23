//
//  RestaurantDetailViewController.swift
//  RestaurantApp
//
//  Created by Preetika Kuntala  on 18/10/21.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var headerView: RestaurantDetailHeaderView!
    
    var restaurant: Restaurant = Restaurant()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = .orange
        
        tableView.contentInsetAdjustmentBehavior = .never
        
        tableView.dataSource = self
        tableView.separatorStyle = .none
        /*restaurantImgView.image = UIImage(named: restaurant.image)
        nameLbl2.text = restaurant.name
        locationLbl2.text = restaurant.location
        typeLbl2.text = restaurant.type
        */
        headerView.nameLbl.text = restaurant.name
        headerView.typeLbl.text = restaurant.type
        headerView.headerImgView.image = UIImage(named: restaurant.image)
        headerView.heartImgView.isHidden = (restaurant.isVisited) ? false : true
        navigationItem.largeTitleDisplayMode = .never
        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(segue:UIStoryboardSegue)
    {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func rateRestaurant(segue: UIStoryboardSegue)
    {
        if let rating = segue.identifier{
            self.restaurant.rating = rating
            self.headerView.ratingImgView.image = UIImage(named: rating)
            
            let scaleTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            //setting the start end of the transition/transformation
            self.headerView.ratingImgView.transform = scaleTransform
            self.headerView.ratingImgView.alpha = 0
            
        
            UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.2,initialSpringVelocity: 0.5,options: [], animations: {
                self.headerView.ratingImgView.transform = .identity
                self.headerView.ratingImgView.alpha = 1
            }, completion: nil)
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMap"{
            let destinationVc = segue.destination as! MapViewController
            destinationVc.restaurant = restaurant
        }
        else if segue.identifier == "showRating"{
            let destinationVC = segue.destination as! RatingViewController
            destinationVC.restaurant = restaurant
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: -Extension for Tableview Datasource methods
    
}
extension RestaurantDetailViewController:UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
        case 0:
            
            let cell =  tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailContactInfoCell.self), for: indexPath) as! RestaurantDetailContactInfoCell
            
            cell.iconImgview.image = UIImage(named:"phone")
            cell.shortTextLbl.text = restaurant.phone
            
            return cell
        case 1:
            
            let cell =  tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailContactInfoCell.self), for: indexPath) as! RestaurantDetailContactInfoCell
            
            cell.iconImgview.image = UIImage(named:"map")
            cell.shortTextLbl.text = restaurant.location
            return cell
        case 2:
            
            let cell =  tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailDescriptionCell.self), for: indexPath) as! RestaurantDetailDescriptionCell
            
            
            //cell.iconImgview.image = UIImage(named:"phone")
            cell.descriptionLbl.text = restaurant.description
            return cell
        case 3:
            let cell =  tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailSeparatorCell.self), for: indexPath) as! RestaurantDetailSeparatorCell
            cell.titleLbl.text = "How TO GET HERE"
            return cell
            
        case 4:
            let cell =  tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailMapCell.self), for: indexPath) as! RestaurantDetailMapCell
            cell.configure(location: restaurant.location)
            
            return cell
            
        default:
            fatalError("Failed to instantiate the table view cell for detail view controller")
            
            
        }
    }
    
}

