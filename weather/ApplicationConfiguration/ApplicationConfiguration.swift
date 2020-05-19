//
//  ApplicationConfiguration.swift
//  weather
//
//  Created by Syed Ali Haider on 5/18/20.
//  Copyright © 2020 Syed Ali Haider. All rights reserved.
//

import UIKit

/// This class was designed and implemented for application onfiguration
class ApplicationConfiguration: NSObject {

    /// Name of the storyboard
    var mainStoryboard = UIStoryboard()
    
    /// Shared instance
    static let shared = ApplicationConfiguration()
    
    /// init
    private override init() {
        super.init()
    }
    
    /// default init value
    func initDefaultValue() {
       
        // init Language
        self.initGetLanguage()
        
        // init Storyboard
        self.initStoryboard()
    }

    /// init device language
    func initGetLanguage() {
        
        // get device language
        let deviceCurrentLanguage = NSLocale.current.languageCode ?? "en"
        
        // Save device language in keychain
        Memory.saveLanguage(value: deviceCurrentLanguage)
    }
    
    /// init storyboard
    func initStoryboard() {
        mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
    }
}
