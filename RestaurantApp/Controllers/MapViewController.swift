//
//  MapViewController.swift
//  RestaurantApp
//
//  Created by Preetika Kuntala  on 21/10/21.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var restaurant = Restaurant()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       mapView.delegate = self
        mapView.showsCompass = true
        mapView.showsScale = true
        mapView.showsTraffic = true
        configure(location: restaurant.location)

        // Do any additional setup after loading the view.
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
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation, animated: true)
                    
                }
                
            }
        })
        
        
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
extension MapViewController:MKMapViewDelegate{
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
       let identifier = "MyMarker"
        
        if annotation.isKind(of: MKUserLocation.self){
            return nil
        }
        var annotationView: MKMarkerAnnotationView? = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
        
        if annotationView == nil {
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        }
        annotationView?.glyphText = " "
        annotationView?.markerTintColor = UIColor.orange
        return annotationView
    }
}
 
