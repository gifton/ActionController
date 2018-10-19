//
//  ContentView.swift
//  Master-mobile
//
//  Created by Dev on 10/13/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

class ContentView: UIView {
    
    var delegate: MasterDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: ScreenSize.ContentFrame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
