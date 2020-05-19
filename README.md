
# Weather App - iOS (Swift 5.0)

STEP I 
1. Finding weather of cities with name (Comma Separated) Min (3) and Max (7) and display Temperature , Description and Wind Speed

STEP II
1. Get user's current location
2. Display weather forecast of current city in 5-days 3-hour format in a list.

## Getting Started

### Step 1 - Search by cities names: 
    - Type city names (min 3 and max 7) comma separated and press done 
    
### Step 2 - Forecast of current city: 
    - On first launch, an alert will prompt for the current location of the user
    - Please allow the location access in order to view 5-day 3-hour forecast of current city.

## Design Pattern
### This project is using MVVM design pattern.

## This app is using the below pods as dependencies

  - SwiftLocation: GPS tracking
  - SwiftLint: For Swift style and conventions
  - IQKeyboardManagerSwift: For keyboard
  - Alamofire: For HTTP Networking
  - SwiftMessages: A very flexible message bar
  - Localize-Swift: For localization and in-app language switching
  - RxCocoa: Reactive Programming
  - RxSwift: Reactive Programming
  - KeychainSwift: Helper functions for saving text in Keychain securely

## Automation
- This project is using fastlane command line to run UnitTesting classes. To run it, write "fastlane tests" on terminal
- You can configure the Fastfile -> lanes for additioanl fastlane usage, e.g: Beta Release, AppStore Release
# WeatherApp
