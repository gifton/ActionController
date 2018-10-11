//
//  ActionButton.swift
//  Master-mobile
//
//  Created by Dev on 10/10/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

class ActionButton: UIButton {
    var activeImage = UIImage()
    var inactiveImage = UIImage()
    var actionPayload: ActionPayload?
    
    func buildButton (active: UIImage, inactive: UIImage) {
        
        self.activeImage = active
        self.inactiveImage = inactive
        self.layer.cornerRadius = self.frame.height / 2
        self.setImage(self.inactiveImage, for: .normal)
        self.setImage(self.activeImage, for: .focused)
    }
    
    func setAttributs(_ actionPayload: ActionPayload) {
        self.actionPayload = actionPayload
    }
}
