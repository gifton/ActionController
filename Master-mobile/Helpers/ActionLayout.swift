//
//  ActionLayout.swift
//  Master-mobile
//
//  Created by Dev on 10/13/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

enum ActionLayout {
    case standard
    case singleButton
    case zero
}

extension ActionContainer {
    func layoutActionView(_ actionLayout: ActionLayout) {
        
    }
    
    //initialize actionview, dont use if you desire a view that has custom components
    func setStandardLayout(actionCenter: view_type.Action.center, icons: ActionImages) {
        self.icons = icons
        self.actionCenterController = actionCenter
        self.buildLayout()
    }
    
    private func buildStabdardLayout(buttons: view_type.Action, actionCenter: view_type.Action.center){
        for sub in self.subviews as [UIView] {
            sub.removeFromSuperview()
        }
    }
    private func buildSingleButtonLayout(buttons: view_type.Action, actionCenter: view_type.Action.center){
        for sub in self.subviews as [UIView] {
            sub.removeFromSuperview()
        }
    }
    private func buildZero(actionCenter: view_type.Action.center){
        for sub in self.subviews as [UIView] {
            sub.removeFromSuperview()
        }
        switch actionCenter {
        case .confirm:
            let view = ConfirmView(frame: .zero)
            self.actionCenter = view
            view.backgroundColor = .flatGreen()
        case .delete:
            let view = DeleteView(frame: .zero)
            self.actionCenter = view
            view.backgroundColor = .flatRed()
        default:
            let view = HomeView(frame: .zero)
            self.actionCenter = view
            view.backgroundColor = .flatGreen()
        }
        
    }
}
