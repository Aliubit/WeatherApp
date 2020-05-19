//
//  Date+Extension.swift
//  weather
//
//  Created by Syed Ali Haider on 5/19/20.
//  Copyright © 2020 Syed Ali Haider. All rights reserved.
//

import UIKit

extension Date {
    
    /// Convert date to String
    func returnDateString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = FormatDate.ddMMYYYY
        return dateFormatter.string(from: self)
    }
}
