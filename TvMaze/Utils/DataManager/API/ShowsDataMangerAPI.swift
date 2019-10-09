//
//  ShowsDataManger.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 08/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Foundation
import Alamofire

class ShowsDataMangerAPI: ShowsDataManagerInterface {
        
    func getShows(completion: @escaping (AFResult<[ShowModel]>) -> Void) {
        APIClient.getShows { (result: AFResult<[ShowModel]>) in
            completion(result)
        }
    }
    
}
