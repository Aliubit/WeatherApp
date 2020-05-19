//
//  ResponseError.swift
//  weather
//
//  Created by Syed Ali Haider on 5/19/20.
//  Copyright © 2020 Syed Ali Haider. All rights reserved.
//

import UIKit

/// Model struct for error response
struct ErrorResponse: Codable {
    let cod: String?
    let message: String?
}
