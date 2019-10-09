//
//  Protocols.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 09/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Foundation


protocol ShowDetailViewInterface: class {
    var presenter: ShowDetailPresenterInterface? { get set }
    
    func showShowDetail(forShow show: ShowViewModel)
}

protocol ShowDetailPresenterInterface: class {
    func notifyViewLoaded()
}

protocol ShowDetailListInteractorInterface {
    
}

protocol ShowDetailRouterInterface {
    
}

protocol ShowDetailInteractorInterface {
    
}
