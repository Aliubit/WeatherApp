//
//  LocManager.swift
//  MyTelenor
//
//  Created by Syed Ali Haider on 19/05/2020.
//  Copyright © 2020 Syed Ali Haider. All rights reserved.
//


import Foundation
import CoreLocation


class LocManager : NSObject , CLLocationManagerDelegate{
    
    var myLocationLongitude:CLLocationDegrees?
    var myLocationLatitude:CLLocationDegrees?
    var currentCorrdinate : CLLocationCoordinate2D?
    
    var defaultLat:CLLocationDegrees = 33.6844
    var defaultLong:CLLocationDegrees = 73.0479
    
    var delegate : LocationListenerDelegate?
    
    var locationAccess : String? {
        set {
            UserDefaults.standard.set("TRUE", forKey: "LOCATIONACCESS")
        }
        get {
            return UserDefaults.standard.value(forKey:"LOCATIONACCESS") as? String
        }
    }
    
    static let shared: LocManager = {
        let instance = LocManager()
        
        // setup code
        
        return instance
    }()
    
    var locationManager = CLLocationManager()
    
    func startTracking() {
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.delegate = self
        self.locationManager.distanceFilter = 1
        //self.locationManager.startUpdatingLocation()
        self.locationManager.startMonitoringSignificantLocationChanges()
        self.locationManager.startUpdatingLocation()
        //
        //self.locationManager.allowsBackgroundLocationUpdates = true
        
        //self.locationManager.pausesLocationUpdatesAutomatically = false
        //
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        guard location != nil else {
            return
        }
        self.myLocationLatitude = (location?.coordinate.latitude)!
        self.myLocationLongitude = (location?.coordinate.longitude)!
        self.locationManager.stopUpdatingLocation()
        delegate?.didFetchLocation(lat: self.myLocationLatitude!, long: self.myLocationLongitude!)
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedAlways,.authorizedWhenInUse:
//            Success
            self.locationAccess = "TRUE"
            print("Fetched Location")
         
            break
        case .denied,.restricted:
//            Failure
            self.locationAccess = nil
            break
        default:
            self.locationAccess = nil
            print("")
        }
    }
//    func navigateToRestrictVC() {
//        let stb = UIStoryboard.init(name: "Main", bundle: nil)
//        let vc = stb.instantiateViewController(withIdentifier: "RestrictLocationVC") as! RestrictLocationViewController
//        if let topController = UIApplication.topViewController() {
//            topController.present(vc, animated: true, completion: nil)
//        }
//
//    }
    
    func getLatitude() -> CLLocationDegrees{
        return self.myLocationLatitude ?? self.defaultLat
    }
    
    func getLongitude() -> CLLocationDegrees{
        return self.myLocationLongitude ?? self.defaultLong
    }
 
}

