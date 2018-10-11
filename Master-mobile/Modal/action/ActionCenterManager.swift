//
//  ActionCenterManager.swift
//  Master-mobile
//
//  Created by Dev on 10/11/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

protocol ActionCenterManager {
    func setButtons(_ sender: Any, icons: [ActionComponent: UIImage])
}
