//
//  Store.swift
//  The Bake Shop
//
//  Created by Jamario Davis on 2/10/19.
//  Copyright © 2019 KAYCAM. All rights reserved.
//

import MapKit
import UIKit

class Store: NSObject, MKAnnotation {
    
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
    
    
    
    

