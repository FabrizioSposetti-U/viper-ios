import UIKit

class MazeModule {
    
    static func buildListShowModule() -> UIViewController {
        let navBar = UINavigationController()
        let view = ShowListView()
        let interactor = ShowListInteractor(showsDataMangerAPI: ShowsDataMangerAPI())
        let router = ShowListRouter()
        let presenter = ShowListPresenter()
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        navBar.setViewControllers([view], animated: true)
        
        return navBar
    }
    
    
    static func createShowDetailModule(forShow show: ShowViewModel) -> UIViewController {
        let view = ShowDetailView(nibName: "ShowDetailView", bundle: nil) as ShowDetailView
        let interactor = ShowDetailInteractor(apiDataManager: ShowsDataMangerAPI())
        let router = ShowDetailRouter()
        let presenter = ShowDetailPresenter()
        
        presenter.view = view
        presenter.show = show
        presenter.router = router
        presenter.interactor = interactor
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
    
    
}
