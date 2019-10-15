//
//  ApiClient.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 08/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.
//

import Alamofire
import PromiseKit

class APIClient {
    
    static func getEpisodesFromShow<T>(id: Int) -> Promise<T> where T: Decodable {
        return Promise { completion in
            AF.request(APIRouter.episodesFromShow(id: id))
                .responseDecodable {(response: DataResponse<T, AFError>) in
                    switch response.result {
                    case .success(let value):
                        completion.fulfill(value)
                    case .failure(let error):
                        completion.reject(error)
                    }
            }
        }
    }
    
    static func getShows<T>() -> Promise<T> where T: Decodable {
        return Promise { completion in
            AF.request(APIRouter.shows)
                .responseDecodable {(response: DataResponse<T, AFError>) in
                    switch response.result {
                    case .success(let value):
                        completion.fulfill(value)
                    case .failure(let error):
                        completion.reject(error)
                    }
            }
        }
    }
    
}
