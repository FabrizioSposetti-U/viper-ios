//
//  PersonSearchProtocols.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 16/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Foundation

protocol PersonSearchViewInterface: class {
    func setupInitialView()
}

protocol PersonSearchPresenterInterface: class {
    func notifyViewLoaded()
}

protocol PersonSearchInteractorInterface {
    
}

protocol PersonSearchRouterInterface {
    
}
