//
//  ShowsDataManger.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 08/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit

class ShowsDataMangerAPI: ShowsDataManagerInterface {
    
    func getShows() -> Promise<[Show]> {
       return APIClient.getShows()
    }
    
    func getEpisodesFromShow(id: Int) -> Promise<[Episode]> {
        return APIClient.getEpisodesFromShow(id: id)
    }
}





