//
//  ActionViewType.swift
//  Master-mobile
//
//  Created by Dev on 10/9/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

enum ActionComponent {
    case leftButton
    case rightButton
    enum center {
        case weather
        case home
        case confirm
        case delete
        case toggle
    }
}

//Components that need to be updated. all "ActionButtons" have an active action payload so when user clicks, action parser can dissect and render views
struct ActionPayload {
    let action: ActionComponent
    let actionCenter: ActionComponent.center
    let content: ContentViewType
    init(action: ActionComponent, actionCenter: ActionComponent.center, content: ContentViewType) {
        self.action = action
        self.actionCenter = actionCenter
        self.content = content
    }
}

enum WeatherType {
    case raining
    case snowing
    case sun
    case hail
    case cloudy
    case thunder
}

struct ActionImages {
    var leftIconActive: UIImage!
    var leftIcon: UIImage!
    var rightIconActive: UIImage!
    var rightIcon: UIImage!

    init(leftIconActive: UIImage, rightIconActive: UIImage, leftIcon: UIImage, rightIcon: UIImage) {
        self.leftIconActive = leftIconActive
        self.rightIconActive = rightIconActive
        self.leftIcon = leftIcon
        self.rightIcon = rightIcon
    }
}
