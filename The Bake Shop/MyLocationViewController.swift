//
//  MyLocationViewController.swift
//  The Bake Shop
//
//  Created by Jamario Davis on 2/5/19.
//  Copyright © 2019 KAYCAM. All rights reserved.
//

import UIKit
import MapKit

class MyLocationViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let savannah = Store(title: "Savannah,GA  First Bake Shop store est.1999", coordinate: CLLocationCoordinate2D(latitude: 32.0809, longitude: -81.0912), info: "First Bake Shop store to in 1999.")
        let miami = Store(title: "Miami Beach,FL  Enjoy South Beach while eating Limelike Cake", coordinate: CLLocationCoordinate2D(latitude: 25.7907, longitude: -80.1300), info: "Enjoy South Beach while eating Limelike Cake")
        
        let dc = Store(title: "Washington,D.C. Enjoy sightseeing in DC", coordinate: CLLocationCoordinate2D(latitude: 38.9072, longitude: -77.0369), info: "Washington,D.C. Enjoy sightseeing in DC")
        let nyc = Store(title: "New York City,NY  Enjoy Champagne Like Cake in the Empire state", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060), info: "New York City,NY  Enjoy Champagne Like Cake in the Empire state")
        let bos = Store(title: "Boston,MA  Blackcurrant-Sorbet is our top selling treat in Boston", coordinate: CLLocationCoordinate2D(latitude: 42.3601, longitude: -71.0589), info: "Boston,MA  Blackcurrant-Sorbet is our top selling treat in Boston")
        let la = Store(title: "Los Angeles,CA  Enjoy some Mocha Cake in Lala land", coordinate: CLLocationCoordinate2D(latitude:  34.0522, longitude: -118.2437), info: "Los Angeles,CA  Enjoy some Mocha Cake in Lala land")
         let tokyo = Store(title: "Tokyo,Japan  First international Bake Shop est.2012", coordinate: CLLocationCoordinate2D(latitude:  35.6895, longitude: 139.6917), info: "Tokyo,Japan  First international Bake Shop est.2012")
        let uae = Store(title: "Abu Dhabi,UAE  Enjoy Fruit Frosty Cake while staying at Jumeirah At Etihad Towers", coordinate: CLLocationCoordinate2D(latitude:  24.4539, longitude: 54.3773), info: "Abu Dhabi,UAE  Enjoy Fruit Frosty Cake while staying at Jumeirah At Etihad Towers")
         let doha = Store(title: "Doha,Qatar  Enjoy Peacan Loveless while staying at Four Seasons Hotel Doha", coordinate: CLLocationCoordinate2D(latitude:  25.2854, longitude: 51.5310), info: "Doha,Qatar  Enjoy Peacan Loveless while staying at Four Seasons Hotel Doha")
        let sydney = Store(title: "Sydney,Australia  Enjoy some our treats while visiting Sydney Opera House", coordinate: CLLocationCoordinate2D(latitude:  33.8688, longitude: 151.2093), info: "Sydney,Australia  Enjoy some our treats while touring the Gold Coast")
        mapView.addAnnotations([savannah,miami,dc,nyc,bos,la,tokyo,uae,doha,sydney])
    }

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        let identifier = "Store"
        
        
        if annotation is Store {
            
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            
            if annotationView == nil {
                
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView!.canShowCallout = true
                
                
                let btn = UIButton(type: .detailDisclosure)
                annotationView!.rightCalloutAccessoryView = btn
            } else {
                
                annotationView!.annotation = annotation
            }
            
            return annotationView
        }
        
        
        return nil
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        let store = view.annotation as! Store
        let placeName = store.title
        let placeInfo = store.info
        
        let ac = UIAlertController(title: placeName, message: placeInfo, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
}

//    let annotationLocations = [

//
//
//
//
//
//        ["title": "Sydney,Australia", "latatiude": 33.8688, "longitude": 151.2093],
//
//
//    ]




