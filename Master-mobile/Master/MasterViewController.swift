
import UIKit
import Foundation

class MasterViewController: UIViewController, MasterDelegate {
    
    var content: ContentClass = DashboardContetView(frame: ScreenSize.ContentFrame)
    var action: ActionClass = ActionView(frame: ScreenSize.ActionFrame)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        action.delegate = self
        
        view.backgroundColor = .remberBGDark
        view.addSubview(content)
        view.addSubview(action)
    }
    
    func SetContentView(viewType: ContentViewType) {
        self.content = content.retrieveContentView(input: viewType)
    }
    
    func SetActionViewComponents(buttons: ActionComponent, center: ActionComponent.center) {
        self.action.changeActionView(buttons: buttons, center: center)
    }
}
