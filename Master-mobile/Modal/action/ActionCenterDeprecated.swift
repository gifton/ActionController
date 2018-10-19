//
//  ActionCenter.swift
//  Master-mobile
//
//  Created by Dev on 10/10/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

class ActionCenter: UIView {
    var type: ActionComponent.center!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
