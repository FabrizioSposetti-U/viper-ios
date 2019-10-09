//
//  ShowDetailPresenter.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 09/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Foundation

class ShowDetailPresenter: ShowDetailPresenterInterface {
    
    weak var view: ShowDetailViewInterface?
    var interactor: ShowDetailInteractorInterface?
    var router: ShowDetailRouterInterface?
    var show: ShowViewModel?
    
    
    func notifyViewLoaded() {
        view?.showShowDetail(forShow: show!)
    }
    
    
}
