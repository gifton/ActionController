//
//  ContentType.swift
//  Master-mobile
//
//  Created by Dev on 10/9/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

enum ContentViewType {
    case profile
    case dashboard
    case thoughts
    case thoughtDetail
    case profileDetail
}

class ContentClass: UIView {
    open var backButton: ActionButton?
    open var backgButtonRecipiant: ContentClass?
    open var title = UILabel()
    open var type: ContentViewType?
    var delegate: MasterDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(title)
        title.frame = CGRect(x: 25, y: 100, width: ScreenSize.SCREEN_WIDTH - 50, height: 50)
        roundCorners(corners: [.bottomLeft, .bottomRight], radius: 35)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
