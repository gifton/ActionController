//
//  UIApplicationExtension.swift
//  Master-mobile
//
//  Created by Dev on 10/10/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    class func showNetworkActivity() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    class func hideNetworkActivity() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
}
