//
//  Constants.swift
//  Rember
//
//  Created by German Lopez on 3/29/16.
//  Copyright © 2016 Rootstrap. All rights reserved.
//

import Foundation
import UIKit

//Add global constants here

struct App {
    static let domain = Bundle.main.bundleIdentifier!
    
    static func error(domain: ErrorDomain = .generic, code: Int? = nil, localizedDescription: String = "") -> NSError {
        return NSError(domain: App.domain + "." + domain.rawValue,
                       code: code ?? 0,
                       userInfo: [NSLocalizedDescriptionKey: localizedDescription])
    }
}

enum ErrorDomain: String {
    case generic = "GenericError"
    case parsing = "ParsingError"
}

extension UIColor {
    static let remberBGLight = UIColor(red: 0.38, green: 0.40, blue: 0.54, alpha: 1.0)
    static let remberBGDark = UIColor(red: 0.24, green: 0.26, blue: 0.35, alpha: 1.0)
    static let remberDarkGray = UIColor(red: 0.14, green: 0.14, blue: 0.14, alpha: 1.0)
    
    static var mainGray = UIColor(red: 0.96, green: 0.96, blue: 0.97, alpha: 1.0)
    static var mainBlue = UIColor(red: 0.34, green: 0.75, blue: 1.00, alpha: 1.0)
    static var wesatBlue = UIColor(red: 0.38, green: 0.44, blue: 0.99, alpha: 1.0)
    static var mutedBlue = UIColor(red: 0.60, green: 0.62, blue: 0.69, alpha: 1.0)
    static var mainYellow = UIColor(red: 0.99, green: 0.85, blue: 0.38, alpha: 1.0)
    static var mainGreen = UIColor(red: 0.31, green: 0.89, blue: 0.76, alpha: 1.0)
    static var mainOrange = UIColor(red: 0.99, green: 0.63, blue: 0.48, alpha: 1.0)
    static var secondaryGreen = UIColor(red: 0.40, green: 0.69, blue: 0.23, alpha: 1.0)
    static var offWhite = UIColor(red: 0.98, green: 0.98, blue: 0.99, alpha: 1.0)
    static var offGray = UIColor(red: 0.27, green: 0.27, blue: 0.27, alpha: 1.0)
    static var randomRed = UIColor(red: 0.60, green: 0.00, blue: 0.20, alpha: 1.0)
    static var darkGray = UIColor(red: 0.29, green: 0.29, blue: 0.29, alpha: 1.0)
}

//font size
enum fontSize: CGFloat {
    case small = 12.0
    case medium = 14.0
    case large = 16.0
    case xLarge = 18.0
    case xXLarge = 20.0
    case xXXLarge = 32.0
}

struct ScreenSize {
    static let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    static let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    static let SCREEN_MAX_LENGTH = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCREEN_MIN_LENGTH = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCALE = UIScreen.main.scale
    static let ratio1619 = (0.5625 * ScreenSize.SCREEN_WIDTH)
    
    //content specific
    static let ContentHeight = SCREEN_HEIGHT * 0.9105
    static var actionCenterSize: CGSize = {
        return CGSize(width: SCREEN_WIDTH * 0.52333, height: ActionFrame.height * 0.59)
    }()
    static var actionCenter: CGRect = {
        return CGRect(x: (SCREEN_WIDTH - actionCenterSize.width) / 2, y: 5, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
    }()
    static var ContentFrame: CGRect = {
        return CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: ContentHeight)
    }()
    static var ActionFrame: CGRect = {
        return CGRect(x: 0, y: ContentHeight, width: SCREEN_WIDTH, height: SCREEN_HEIGHT - ContentHeight)
    }()

}
