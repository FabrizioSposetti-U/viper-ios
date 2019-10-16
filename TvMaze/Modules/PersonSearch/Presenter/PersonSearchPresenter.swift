//
//  PersonSearchPresenter.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 16/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Foundation

class PersonSearchPresenter {
    
    weak var view: PersonSearchViewInterface?
    var interactor: PersonSearchInteractorInterface?
    var router: PersonSearchRouterInterface?
    
}


extension PersonSearchPresenter: PersonSearchPresenterInterface {
    
    func notifyViewLoaded() {
        view?.setupInitialView()
    }
    
    
}
