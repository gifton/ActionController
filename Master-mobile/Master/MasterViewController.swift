
import UIKit
import Foundation

class MasterViewController: UIViewController, MasterDelegate {
    
    var content: ContentClass = DashboardContetView(frame: ScreenSize.ContentFrame)
    var action: ActionClass = ActionView(frame: ScreenSize.ActionFrame)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        action.delegate = self
        
        view.backgroundColor = .cyan
        view.addSubview(content)
        view.addSubview(action)
    }
    
    func SetActionViewComponents(components: [ActionComponent]) {
        print("we'll add components later")
    }
    
    func SetContentView(viewType: ContentViewType) {
        self.content = content.retrieveContentView(sender: content, input: viewType)
    }
}
