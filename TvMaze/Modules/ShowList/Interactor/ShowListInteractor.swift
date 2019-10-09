import UIKit

class ShowListInteractor {
        
    weak var presenter: ShowsListPresenterInterface?
    var apiDataManager: ShowsDataMangerAPI?

    init(showsDataMangerAPI: ShowsDataMangerAPI) {
        apiDataManager = showsDataMangerAPI
    }

}

extension ShowListInteractor: ShowsListInteractorInterface {
    
    func fetchShowList() {
        apiDataManager?.getShows(completion: { result in
            switch result {
            case .success(let shows):
                self.presenter?.showListFetched(showList: shows)
            case .failure(let error):
                self.presenter?.showListFetchFailed(with: error.localizedDescription)
            }
        })
    }
    
    
}
