//
//  ViewTypes.swift
//  Master-mobile
//
//  Created by Dev on 10/12/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

enum view_type {
    enum content {
        case profile
        case dashboard
        case thoughts
        case thoughtDetail
        case profileDetail
        
        static func getView(_ content: view_type.content) -> ContentClass {
            switch content {
            case .profile:
                return ProfileViewContent(frame: ScreenSize.ContentFrame)
            case .dashboard:
                return DashboardContetView(frame: ScreenSize.ContentFrame)
            case .thoughts:
                return ThoughtsViewContent(frame: ScreenSize.ContentFrame)
            case .thoughtDetail:
                print("Home requested")
                return ThoughtsDetailViewContent(frame: ScreenSize.ContentFrame)
            case .profileDetail:
                print("Toggle selected")
                return ProfileDetailViewContent(frame: ScreenSize.ContentFrame)
            }
        }
    }
    enum Action {
        case leftButton
        case rightButton
        case clear
        enum center {
            case weather
            case home
            case confirm
            case delete
            case toggle
        }
    }
}
