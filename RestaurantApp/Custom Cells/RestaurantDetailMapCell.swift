//
//  RestaurantDetailMapCell.swift
//  RestaurantApp
//
//  Created by Preetika Kuntala  on 21/10/21.
//

import UIKit
import MapKit

class RestaurantDetailMapCell: UITableViewCell {
    
    @IBOutlet weak var mapView:MKMapView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    
    func configure(location: String){
        //get location
        let geoCoder = CLGeocoder()
        
        geoCoder.geocodeAddressString(location,completionHandler: {
            placemarks, error in
            
            if let err =  error {
                print(err.localizedDescription)
                return
            }
            if let placemarks = placemarks{
                //Get the first placemark
                 let placemark = placemarks[0]
                //Add annotation
                 let annotation = MKPointAnnotation()
                if let location = placemark.location{
                    //Display the annotation
                    annotation.coordinate = location.coordinate
                    self.mapView.addAnnotation(annotation)
                    
                    //set the zoom level
                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 250, longitudinalMeters: 250)
                    self.mapView.setRegion(region, animated: false)
                    
                    
                    
                    
                }
                
            }
        })
        
        
    }
   
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
