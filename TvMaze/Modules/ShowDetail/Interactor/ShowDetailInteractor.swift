//
//  ShowDetailInteractor.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 09/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Foundation

class ShowDetailInteractor: ShowDetailInteractorInterface {
    
    weak var presenter: ShowDetailPresenterInterface?
    var apiDataManager: ShowsDataMangerAPI?
    
    init(apiDataManager: ShowsDataMangerAPI) {
        self.apiDataManager = apiDataManager
    }
    
    func getEpisodesFromShow(showId: Int) {
        apiDataManager?.getEpisodesFromShow(id: showId)
            .done { (episodes: [Episode]) in
                self.presenter?.showEpisodesFetched(episodes: episodes)
        }
            
        .catch { _ in
            self.presenter?.showEpisodesFetchedFailed()
        }
    }
    
}
