//
//  ActionClass.swift
//  Master-mobile
//
//  Created by Dev on 10/10/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

class ActionClass: UIView {
    
    //variables
    //icons
    private var icons: ActionImages?
    
    //views
    var actionCenter: ActionComponent.center?
    
    //buttons
    var leftButton: ActionButton = {
        let button = ActionButton()
        button.frame.size = CGSize(width: 30, height: 30)
        button.addTarget(self, action: #selector(leftButtonClicked), for: .touchUpInside)
        
        return button
    }()
    var rightButton: ActionButton = {
        let button = ActionButton()
        button.frame.size = CGSize(width: 30, height: 30)
        button.addTarget(self, action: #selector(leftButtonClicked), for: .touchUpInside)
        
        return button
    }()
    
    //delegate                      `
    var delegate: MasterDelegate?
    
    //functions
    
    //initialize conveninace to have actoincenter placed automatically, dont use if you desire a custom view in middle
    convenience init(actionCenter: ActionComponent.center, icons: ActionImages, leftIcon: UIImage = #imageLiteral(resourceName: "icons8-ios-photos"), rightIcon: UIImage = #imageLiteral(resourceName: "icons8-ios-photos")) {
        self.init(actionCenter: actionCenter, icons: icons, leftIcon: leftIcon, rightIcon: rightIcon)
        self.icons = icons
        self.actionCenter = actionCenter
        self.builtLayout()
    }
    
    private func builtLayout() {
        
        guard let icons: ActionImages = self.icons else {return}
        
        //add ActionCenter
        let newAction: UIView = self.retrieveCenterView(sender: self, input: actionCenter!)
        self.addSubview(newAction)
        newAction.frame.size = ScreenSize.actionCenterSize
        newAction.frame.origin = CGPoint(x: (ScreenSize.SCREEN_WIDTH - ScreenSize.actionCenterSize.width) / 2, y: 5)
        
        //add right button
        self.leftButton.buildButton(active: icons.leftIconActive, inactive: icons.leftIcon)
        self.addSubview(leftButton)
        leftButton.frame.origin = CGPoint(x: 15, y: ScreenSize.ContentHeight + 10)
        
        //add right button
        self.rightButton.buildButton(active: icons.rightIconActive, inactive: icons.rightIcon)
        self.addSubview(rightButton)
        rightButton.frame.origin = CGPoint(x: ScreenSize.SCREEN_WIDTH - 45, y: ScreenSize.ContentHeight + 10)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func changeActionCenter(sender: Any = "", pushing: [ActionComponent.center]) {
        
        self.delegate?.SetContentView(viewType: ContentViewType.dashboard)
        
        for i in pushing {
            switch i {
            case .weather:
                print("Weather requested")
            case .confirm:
                print("confirm requested")
            case .delete:
                print("delete requested")
            case .home:
                print("Home requested")
            case .toggle:
                print("Toggle selected")
            }
        }
        
    }
    @objc public func leftButtonClicked(){
        print("Left button clicked!")
    }
    
    @objc public func rightButtonClicked(){
        print("Right buggon clicked")
    }
}
