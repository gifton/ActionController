
import UIKit
import Foundation

class MasterViewController: UIViewController, MasterDelegate {
    
//    var content: ContentClass = DashboardContetView(frame: ScreenSize.ContentFrame)
    var action: ActionClass = ActionView(frame: ScreenSize.ActionFrame)
    var content: UIView = ContentView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        action.delegate = self
        content.delegate = self
        addContent(.dashboard)
        view.backgroundColor = .remberBGDark
        view.addSubview(content)
        view.addSubview(action)
        
    }
    
    
    func addContent(_ input: ContentViewType) {
        switch input {
        case ContentViewType.dashboard:
            print("Dashboard!")
            self.content.setContent
        case ContentViewType.profile:
            print("Profile!")
            self.content = ProfileViewContent()
        case ContentViewType.profileDetail:
            print("ProfileDetail!")
            self.content = ProfileDetailViewContent()
        case ContentViewType.thoughtDetail:
            print("ThoughtDetail!")
            self.content = ThoughtsDetailViewContent()
        case ContentViewType.thoughts:
            print("ThoughtVIew!")
            self.content = ThoughtsViewContent()
        }
    }
    
    func SetContentView(viewType: ContentViewType) {
        addContent(viewType)
        print("masterViewcontroller recieved instructions: \(viewType)")
    }
    
    func SetActionViewComponents(buttons: ActionComponent, center: ActionComponent.center) {
        self.action.changeActionView(buttons: buttons, center: center)
    }
}
