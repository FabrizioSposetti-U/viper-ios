import UIKit

typealias ShowViewModel = (name:String, id:String)


class ShowListPresenter {

    weak var view: ShowsListViewInterface?
    var interactor: ShowsListInteractorInterface?
    var router: ShowListRouterInterface?
    
}

extension ShowListPresenter: ShowsListPresenterInterface {

    func notifyViewLoaded() {
        view?.setupInitialView()
        view?.showLoading()
        interactor?.fetchShowList()
    }
    
    func showSelected() {
        
    }
    
    func showListFetched(showList: [ShowModel]) {
        var showViewModels = [ShowViewModel]()
        for show in showList {
            let showViewModel: ShowViewModel = (show.name, "\(show.id)")
            showViewModels.append(showViewModel)
        }
        view?.hideLoading()
        view?.reloadData(showViewModels: showViewModels)
    }
    
    
    func showListFetchFailed(with errorMessage: String) {
        print("")
    }
    
    func showDetailShow(show: ShowViewModel) {
        router?.presentDetailShowScreen(from: view!, forShow: show)
    }
    
    
}

