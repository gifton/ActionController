//
//  Dashboard.swift
//  Master-mobile
//
//  Created by Dev on 10/10/18.
//  Copyright © 2018 pairso. All rights reserved.
//

import Foundation
import UIKit

class weatherView: ActionCenter {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.type = ActionComponent.center.weather
        self.backgroundColor = .mainGreen
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ToggleView: ActionCenter {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.type = ActionComponent.center.toggle
        self.backgroundColor = .mainOrange
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ConfirmView: ActionCenter {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.type = ActionComponent.center.confirm
        self.backgroundColor = .mainBlue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class DeleteView: ActionCenter {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.type = ActionComponent.center.delete
        self.backgroundColor = .randomRed
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class HomeView: ActionCenter {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.type = ActionComponent.center.home
        self.backgroundColor = UIColor.mainYellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
