//
//  Content.swift
//  Master-mobile
//
//  Created by Dev on 10/9/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

class ContentView: UIView {
    var delegate: MasterDelegate?
    override init(frame: CGRect) {
        super.init(frame: frame)
        view.backgroundColor = .white
        addSubview(view)
        view.frame = ScreenSize.ContentFrame
        view.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 32)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var view: UIView = UIView()
    
    public func setContentView(content: ContentClass) {
        self.view.backgroundColor = .red
        self.view.addSubview(content)
        
    }
}

class ProfileViewContent: ContentClass {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.mainYellow
        title.text = "ProfileViewContent"
        type = ContentViewType.profileDetail
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class ThoughtsViewContent: ContentClass {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.remberDarkGray
        title.text = "ThoughtsViewContent"
        type = ContentViewType.thoughts
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class ProfileDetailViewContent: ContentClass {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.remberBGLight
        title.text = "ProfileDetailViewContent"
        type = .profileDetail
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class ThoughtsDetailViewContent: ContentClass {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.remberBGDark
        title.text = "ThoughtsDetailViewContent"
        type = .thoughtDetail
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
