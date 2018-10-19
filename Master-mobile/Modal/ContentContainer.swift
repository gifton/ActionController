//
//  ContentContainer.swift
//  Master-mobile
//
//  Created by Dev on 10/13/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework

class ContentContainer: UIView, ContentCore {
    
    func changeContentView(_ content: view_type.content) {
        setContent(content)
    }
    
    func updateContentContainer(_ content: Any) {
        print("This feature isnt availabel yet")
    }
    
    private func setContent(_ content: view_type.content) {
        switch content {
            case .dashboard:
                self.view = DashboardContetView()
            default:
                self.view = ProfileViewContent()
        }
    }
    
    private func animateContainer(_ animation: UIViewAnimating) {
        print(animation)
    }
    
    var view: ContentClass!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(self.view)
        self.view.frame = ScreenSize.ContentFrame
        self.view.backgroundColor = .flatRed()
        self.setContent(.profileDetail)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
