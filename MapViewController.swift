//
//  MapViewController.swift
//  MUNSA
//
//  Created by Eric Love on 7/28/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate  {
    
    
    @IBOutlet var map: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007) //lower these to make region smaller, redo after setting all markers
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(29.463460, -98.482840)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
        
        let locationLaurie:CLLocationCoordinate2D = CLLocationCoordinate2DMake(29.464410, -98.481931)
        let annotationLaurie = MKPointAnnotation()
        annotationLaurie.coordinate = locationLaurie
        annotationLaurie.title = "Laurie Auditorium"
        annotationLaurie.subtitle = "Opening/Closing Ceremonies"
        map.addAnnotation(annotationLaurie)
        
        let annotationCSI = MKPointAnnotation()
        let locationCSI:CLLocationCoordinate2D = CLLocationCoordinate2DMake(29.464440, -98.484083)
        annotationCSI.coordinate = locationCSI
        annotationCSI.title = "CSI Building"
        annotationCSI.subtitle = "Committees in CSI"
        map.addAnnotation(annotationCSI)
        
        let annotationParking = MKPointAnnotation()
        let locationParking:CLLocationCoordinate2D = CLLocationCoordinate2DMake(29.465019, -98.481658)
        annotationParking.coordinate = locationParking
        annotationParking.title = "Parking Lot"
        annotationParking.subtitle = "Used for buses drop-off and pick-up"
        map.addAnnotation(annotationParking)
        
}
}
