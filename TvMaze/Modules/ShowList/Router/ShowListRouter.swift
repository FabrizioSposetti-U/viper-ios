import UIKit

class ShowListRouter: ShowListRouterInterface {
    
    weak var viewController: UIViewController?
    
    func presentDetailShowScreen(from view: ShowsListViewInterface, forShow showViewModel: ShowViewModel) {
        
        let show = Show(id: Int(showViewModel.id) ?? 0, url: "", name: showViewModel.name, image: showViewModel.imagen, type: showViewModel.type, status: showViewModel.status, language: showViewModel.language, summary: showViewModel.summary)
        let showDetailViewController = MazeModule.createShowDetailModule(forShow: show)
        
        if let sourceView = view as? UIViewController {
            sourceView.navigationController?.pushViewController(showDetailViewController, animated: true)
        }
    }
    
}
