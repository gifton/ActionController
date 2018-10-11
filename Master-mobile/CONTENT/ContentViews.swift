//
//  Content.swift
//  Master-mobile
//
//  Created by Dev on 10/9/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

class DashboardContetView: ContentClass {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.remberDarkGray
        title.text = "DashboardContetView"
        type = .dashboard
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
