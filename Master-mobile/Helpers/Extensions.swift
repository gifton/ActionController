//
//  Extensions.swift
//  Master-mobile
//
//  Created by Dev on 10/9/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    static var rainy: UIImage {
        return UIImage(named: "rainy.png")!
    }
    static var sunny: UIImage {
        return UIImage(named: "sunny.png")!
    }
    static var cloudy: UIImage {
        return UIImage(named: "cloudy.png")!
    }
    static var snowy: UIImage {
        return UIImage(named: "snowy.png")!
    }
    static var thunder: UIImage {
        return UIImage(named: "thunder.png")!
    }
    static var hail: UIImage {
        return UIImage(named: "hail.png")!
    }
}


extension String {
    func password(string: String) -> Int {
        let capitalRegex = ".*[A-Z]+.*"
        let capitalTest = NSPredicate(format: "SELF MATCHES %@", capitalRegex)
        let numberRegEx  = "[0-9]+"
        let numberTest = NSPredicate(format: "SELF MATCHES %@", numberRegEx)
        if string.count <= 7 {
            return 1
        } else if capitalTest.evaluate(with: string) == false {
            return 2
        } else if numberTest.evaluate(with: string) == false {
            return 3
        }
        return 0
    }
}

extension ActionContainer {
    func retrieveCenterView(sender: UIView, input: ActionComponent.center) -> ActionCenter {
        switch input {
        case .weather:
            print("Weather requested")
            return weatherView()
        case .confirm:
            print("confirm requested")
            return ConfirmView()
        case .delete:
            print("delete requested")
            return DeleteView()
        case .home:
            print("Home requested")
            return HomeView()
        case .toggle:
            print("Toggle selected")
            return ToggleView()
        }
    }
    func retrieveContentView( input: ContentViewType) -> ContentClass {
        switch input {
        case ContentViewType.dashboard:
            print("Dashboard!")
            return DashboardContetView()
        case ContentViewType.profile:
            print("Profile!")
            return ProfileViewContent()
        case ContentViewType.profileDetail:
            print("ProfileDetail!")
            return ProfileDetailViewContent()
        case ContentViewType.thoughtDetail:
            print("ThoughtDetail!")
            return ThoughtsDetailViewContent()
        case ContentViewType.thoughts:
            print("ThoughtVIew!")
            return ThoughtsViewContent()
        }
    }
}
