
import UIKit
import Foundation

class MasterViewController: UIViewController, MasterDelegate {
    func SetContentView(viewType: ContentViewType) {
        addContent(viewType)
        print("masterViewcontroller recieved instructions: \(viewType)")
    }
    
    
//    var content: ContentClass = DashboardContetView(frame: ScreenSize.ContentFrame)
    var action: ActionClass = ActionView(frame: ScreenSize.ActionFrame)
    var content = ContentView(frame: ScreenSize.ContentFrame)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        action.delegate = self
        content.delegate = self
        view.backgroundColor = .remberBGDark
        view.addSubview(content)
        view.addSubview(action)
        
    }
    
    
    func addContent(_ input: ContentViewType) {
        switch input {
        case ContentViewType.dashboard:
            print("Dashboard!")
            self.content.setContentView(content: DashboardContetView(frame: ScreenSize.ContentFrame))
        case ContentViewType.profile:
            print("Profile!")
            self.content.setContentView(content: ProfileViewContent(frame: ScreenSize.ContentFrame))
        case ContentViewType.profileDetail:
            print("ProfileDetail!")
            self.content.setContentView(content: ProfileDetailViewContent(frame: ScreenSize.ContentFrame))
        case ContentViewType.thoughtDetail:
            print("ThoughtDetail!")
            self.content.setContentView(content: ThoughtsDetailViewContent(frame: ScreenSize.ContentFrame))
        case ContentViewType.thoughts:
            print("ThoughtVIew!")
            self.content.setContentView(content: ThoughtsViewContent(frame: ScreenSize.ContentFrame))
        }
    }
    
    
    func SetActionViewComponents(buttons: ActionComponent, center: ActionComponent.center) {
        self.action.updateActionView(buttons: buttons, center: center)
    }
}
