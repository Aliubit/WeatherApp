//
//  LinksUtils.swift
//  weather
//
//  Created by Syed Ali Haider on 5/18/20.
//  Copyright © 2020 Syed Ali Haider. All rights reserved.
//

import UIKit
import CoreLocation

/// This class was designed and implemented to get links
class LinksUtils: NSObject {

    /// API Key for calling API
    static let APIKey = "33af6f23ccd365d1cffeb772a015a27a"

    /// Get Host Name as String
    static func getHostName() -> String {
        return "api.openweathermap.org"
    }
    
    /// Get Base URL as String
    static func getBaseUrl() -> String {
        return "http://api.openweathermap.org/data/2.5"
    }
    
    /// API End Point
    enum Endpoint: String {
        /// weather
        case weatherAPI         = "/weather"
        
        /// forecast
        case weatherForecastAPI = "/forecast"
    }
    
    /// End Point API Call for Weather
    /// - Parameter city: city name as String
    static func getWeather(for city: String) -> String {
        return "\(Endpoint.weatherAPI.rawValue)?q=\(city)&units=metric&lang=\(Memory.getLanguage())&APPID=\(LinksUtils.APIKey)"
    }
    
    /// End Point API Call for Forecast
    /// - Parameter locationCoordinate: Location coordinate as CLLocationCoordinate2D
    static func getWeatherForecast(locationCoordinate: CLLocationCoordinate2D) -> String {
        let latitude  = locationCoordinate.latitude
        let longitude = locationCoordinate.longitude
        
        return "\(Endpoint.weatherForecastAPI.rawValue)?lat=\(latitude)&lon=\(longitude)&units=metric&lang=\(Memory.getLanguage())&APPID=\(LinksUtils.APIKey)"
    }
}
