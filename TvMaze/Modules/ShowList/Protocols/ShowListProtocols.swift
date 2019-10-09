import Foundation
import UIKit

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
    func showDetailShow(show: ShowViewModel)
    
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
    func presentDetailShowScreen(from view: ShowsListViewInterface, forShow show: ShowViewModel)

}
