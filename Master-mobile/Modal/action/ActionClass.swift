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
        button.setAttributs(payload)
        button.frame.size = CGSize(width: 30, height: 30)
        button.addTarget(self, action: #selector(leftButtonClicked(sender:)), for: .touchUpInside)
        return button
    }()
    var rightButton: ActionButton = {
        let payload = ActionPayload.init(action: .rightButton, actionCenter: ActionComponent.center.home, content: ContentViewType.profile)
        let button = ActionButton()
        button.setAttributs(payload)
        button.frame.size = CGSize(width: 30, height: 30)
        button.addTarget(self, action: #selector(rightButtonClicked(sender:)), for: .touchUpInside)
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
           self.selectLeftButton()
        default:
            self.selectRightButton()
        }
    }
    
    func changeContent(content: ContentViewType) {
        self.delegate?.SetContentView(viewType: content)
    }
    
    public func clearButtons(sender: Any) {
        self.leftButton.isSelected = false
        self.rightButton.isSelected = false
    }
    private func selectRightButton(sender: ActionPayload? = ActionPayload.notAvailable) {
        self.leftButton.isSelected = false
        self.rightButton.isSelected = true
        guard let sender: ActionPayload = sender else { return }
        self.delegate?.SetContentView(viewType: sender.content)
    }
    private func selectLeftButton(sender: ActionPayload? = ActionPayload.notAvailable) {
        self.rightButton.isSelected = false
        self.leftButton.isSelected = true
        guard let sender: ActionPayload = sender else { return }
        self.delegate?.SetContentView(viewType: sender.content)
    }
    
    @objc func leftButtonClicked(sender: ActionButton){
        guard var newSender: ActionPayload = sender.actionPayload else {
            var newSender: ActionPayload = ActionPayload.notAvailable
            return
        }
        selectLeftButton(sender: newSender)
        print("leftbuttonclicked")
    }
    @objc func rightButtonClicked(sender: ActionButton) {
        guard var newSender: ActionPayload = sender.actionPayload else {
            var newSender: ActionPayload = ActionPayload.notAvailable
            return
        }
        selectRightButton(sender: newSender)
        print("rigthButtonclicked")
    }
}
