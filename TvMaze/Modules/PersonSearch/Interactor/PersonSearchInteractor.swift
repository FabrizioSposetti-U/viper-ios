//
//  PersonSearchInteractor.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 16/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Foundation

class PersonSearchInteractor {
    
    var apiDataManager: ShowsDataMangerAPI?
    weak var presenter: PersonSearchPresenterInterface?
    
    init(showsDataMangerAPI: ShowsDataMangerAPI) {
        apiDataManager = showsDataMangerAPI
    }
}

extension PersonSearchInteractor: PersonSearchInteractorInterface {
    
}
