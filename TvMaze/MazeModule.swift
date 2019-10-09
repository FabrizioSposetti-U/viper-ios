import UIKit

class MazeModule {

    static func build() -> UIViewController {        
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
        
        return view
    }    
}
