//
//  MasterDelegate.swift
//  Master-mobile
//
//  Created by Dev on 10/9/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

protocol MasterDelegate {
    
    //change contentView
    func SetContentView(viewType: ContentViewType)
    
    //change actionView
    func SetActionViewComponents(buttons: ActionComponent, center: ActionComponent.center)
    
}

protocol ChancellorDelegate {
    //change contentView
    func SetContentView(viewType: ContentViewType)
    
    //change actionView
    func SetActionViewComponents(buttons: ActionComponent, center: ActionComponent.center)
    
}
