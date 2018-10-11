//
//  ActionClass.swift
//  Master-mobile
//
//  Created by Dev on 10/10/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework

class ActionClass: UIView {
    
    //variables
    //icons
    private var icons: ActionImages?
    
    //views
    var actionCenterController: ActionComponent.center?
    var actionCenter: UIView!
    
    //buttons
    var leftButton: ActionButton = {
        let payload = ActionPayload.init(action: .leftButton, actionCenter: ActionComponent.center.weather, content: ContentViewType.thoughts)
        let button = ActionButton()
        button.frame.size = CGSize(width: 30, height: 30)
        button.addTarget(self, action: #selector(leftButtonClicked), for: .touchUpInside)
        return button
    }()
    var rightButton: ActionButton = {
        let payload = ActionPayload.init(action: .rightButton, actionCenter: ActionComponent.center.home, content: ContentViewType.profile)
        let button = ActionButton()
        button.frame.size = CGSize(width: 30, height: 30)
        button.addTarget(self, action: #selector(leftButtonClicked), for: .touchUpInside)
        button.setAttributs(payload)
        return button
    }()
    
    //delegate                      `
    var delegate: MasterDelegate?
    
    //functions
    
    //initialize conveninace to have actoincenter placed automatically, dont use if you desire a custom view in middle
    func buildOut(actionCenter: ActionComponent.center, icons: ActionImages, leftIcon: UIImage = #imageLiteral(resourceName: "icons8-ios-photos"), rightIcon: UIImage = #imageLiteral(resourceName: "icons8-ios-photos")) {
        self.icons = icons
        self.actionCenterController = actionCenter
        self.builtLayout()
    }
    
    private func builtLayout() {
        
        guard let icons: ActionImages = self.icons else {return}
        
        //add ActionCenter
        actionCenter = self.retrieveCenterView(sender: self, input: actionCenterController!)
        self.addSubview(actionCenter)
        actionCenter.frame.size = ScreenSize.actionCenterSize
        actionCenter.frame.origin = CGPoint(x: (ScreenSize.SCREEN_WIDTH - ScreenSize.actionCenterSize.width) / 2, y: 7.5)
        actionCenter.layer.cornerRadius = ScreenSize.actionCenterSize.height / 2
        
        //add right button
        self.leftButton.buildButton(active: icons.leftIconActive, inactive: icons.leftIcon)
        self.addSubview(leftButton)
        leftButton.frame.origin = CGPoint(x: 35, y: 15)
        
        //add right button
        self.rightButton.buildButton(active: icons.rightIconActive, inactive: icons.rightIcon)
        self.addSubview(rightButton)
        rightButton.frame.origin = CGPoint(x: ScreenSize.SCREEN_WIDTH - 65, y: 15)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .remberBGDark
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func changeActionView(buttons: ActionComponent, center: ActionComponent.center) {
        //deal with center
        let view = self.retrieveCenterView(sender: self, input: center)
        self.actionCenter = view
        
        //handle buttons
        switch buttons {
        case .leftButton:
           self.selectLeftButton(sender: self)
        default:
            self.selectRightButton(sender: self)
        }
    }
    
    func changeContent(content: ContentViewType) {
        self.delegate?.SetContentView(viewType: content)
    }
    
    public func clearButtons(sender: Any) {
        self.leftButton.isSelected = false
        self.rightButton.isSelected = false
    }
    private func selectRightButton(sender: Any) {
        self.leftButton.isSelected = false
        self.rightButton.isSelected = true
        print("This was activated!: button, right")
    }
    private func selectLeftButton(sender: Any) {
        self.rightButton.isSelected = false
        self.leftButton.isSelected = true
        print("This was activated!: button, left")
    }
    
    @objc func leftButtonClicked(sender: ActionButton){
        selectLeftButton(sender: self)
    }
    @objc func rightButtonClicked(sender: ActionButton) {
        selectLeftButton(sender: sender.actionPayload)
    }
}
