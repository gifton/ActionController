//
//  ActionView.swift
//  Master-mobile
//
//  Created by Dev on 10/9/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit


class ActionView: ActionClass {
    
    //initate vars
    let icons = ActionImages.init(leftIconActive: #imageLiteral(resourceName: "Thought"), rightIconActive: #imageLiteral(resourceName: "shuttle"), leftIcon: #imageLiteral(resourceName: "Thoughts-icon"), rightIcon: #imageLiteral(resourceName: "Thought-small"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .cyan
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func buttonTapped(sender: ActionButton) {
        print ("Button func init'd")
        delegate?.SetContentView(viewType: .dashboard)
        
        
    }
}



