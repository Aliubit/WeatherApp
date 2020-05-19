//
//  Formatters.swift
//  weather
//
//  Created by Syed Ali Haider on 5/19/20.
//  Copyright © 2020 Syed Ali Haider. All rights reserved.
//

import UIKit

/// get Locale specific date
let EEEEFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEEE"
    return formatter
}()
