import Foundation

// AddressListPresenter -> AddressListView
protocol ShowsListViewInterface: class {
    func showLoading()
    func hideLoading()
    func reloadData(showViewModels: [ShowViewModel])
    func setupInitialView()
}

protocol ShowsListPresenterInterface: class {
    // AddressListView -> AddressListPresenter
    func notifyViewLoaded()
    func showSelected()
    
    // AddressListInteractor -> AddressListPresenter
    func showListFetched(showList:[ShowModel])
    func showListFetchFailed(with errorMessage:String)
}

protocol ShowsListInteractorInterface {
    // AddressListPresenter -> AddressListInteractor
    func fetchShowList()
}


protocol ShowListRouterInterface {
    // AddressListPresenter -> AddressListRouter
    
}
