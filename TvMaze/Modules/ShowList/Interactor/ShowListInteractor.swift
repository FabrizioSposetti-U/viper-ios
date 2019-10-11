
class ShowListInteractor {
    
    weak var presenter: ShowsListPresenterInterface?
    var apiDataManager: ShowsDataMangerAPI?
    
    init(showsDataMangerAPI: ShowsDataMangerAPI) {
        apiDataManager = showsDataMangerAPI
    }
    
}

extension ShowListInteractor: ShowsListInteractorInterface {
    
    func fetchShowList() {
        apiDataManager?.getShows()
        .done { (shows: [ShowModel]) in
            self.presenter?.showListFetched(showList: shows)
        }
            
        .catch { error in
            self.presenter?.showListFetchFailed(with: error.localizedDescription)
        }
    }
    
}
