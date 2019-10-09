import UIKit

class ShowListRouter: ShowListRouterInterface {
    
    weak var viewController: UIViewController?
    
    func presentDetailShowScreen(from view: ShowsListViewInterface, forShow show: ShowViewModel) {
        
        let showDetailViewController = MazeModule.createShowDetailModule(forShow: show)
        
        if let sourceView = view as? UIViewController {
            sourceView.present(showDetailViewController, animated: true, completion: nil)
        }
        
    }
    
}
