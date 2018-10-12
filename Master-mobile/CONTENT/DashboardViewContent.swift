//
//  DashboardViewContent.swift
//  Master-mobile
//
//  Created by Dev on 10/11/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

//one of Content views types: SET TO DEFAULT
class DashboardContetView: ContentClass {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.remberDarkGray
        title.text = "DashboardContetView"
        type = .dashboard
    }
    
    let img: UIImageView = UIImageView()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
